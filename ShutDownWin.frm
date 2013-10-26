VERSION 5.00
Begin VB.Form ShutDownWin 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "OX163 �Զ��ػ�����"
   ClientHeight    =   1560
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   3075
   Icon            =   "ShutDownWin.frx":0000
   LinkTopic       =   "ShutDownWin"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1560
   ScaleWidth      =   3075
   StartUpPosition =   2  '��Ļ����
   Begin VB.Timer shutdown_timer 
      Interval        =   1000
      Left            =   0
      Top             =   1080
   End
   Begin VB.CommandButton canncel_shut 
      Caption         =   "ȡ���Զ��ػ�"
      Height          =   495
      Left            =   720
      TabIndex        =   0
      Top             =   960
      Width           =   1575
   End
   Begin VB.Image Image1 
      Height          =   480
      Left            =   120
      Picture         =   "ShutDownWin.frx":406A
      Top             =   120
      Width           =   465
   End
   Begin VB.Label infro 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "���������Զ��ػ�"
      Height          =   180
      Left            =   720
      TabIndex        =   1
      Top             =   120
      Width           =   1440
   End
End
Attribute VB_Name = "ShutDownWin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim count_times As Byte

Private Declare Function ExitWindowsEx Lib "user32" (ByVal uFlags As Long, ByVal dwReserved As Long) As Long

Private Const ENDSESSION_LOGOFF = &H80000000

Private Enum EShutDownTypes
    [_First] = 0
    EWX_LOGOFF = 0
    EWX_SHUTDOWN = 1&
    EWX_REBOOT = 2&
    EWX_FORCE = 4&
    EWX_POWEROFF = 8&
    EWX_FORCEIFHUNG = 10& ' NT5 only
    
    REBOOT = EWX_FORCE Or EWX_REBOOT
    SHUTDOWN = EWX_FORCE Or EWX_SHUTDOWN
    POWEROFF = EWX_FORCE Or EWX_POWEROFF
    [_Last] = &H20& - 1
End Enum

Private Enum EShutDownErrorBaseConstant
    eeSSDErrorBase = vbObjectError Or (1048 + &H210)
End Enum

'ȷ���Ƿ�������NT����
Private Type OSVERSIONINFO
    dwOSVersionInfoSize As Long
    dwMajorVersion As Long
    dwMinorVersion As Long
    dwBuildNumber As Long
    dwPlatformId As Long
    szCSDVersion As String * 128 ' Maintenance string for PSS usage
End Type

Private Declare Function GetVersionEx Lib "kernel32" Alias "GetVersionExA" (lpVersionInformation As OSVERSIONINFO) As Long

Private Const VER_PLATFORM_WIN32_NT = 2
Private Const VER_PLATFORM_WIN32_WINDOWS = 1
Private Const VER_PLATFORM_WIN32s = 0

'�Ա㱨��API����:
Private Const FORMAT_MESSAGE_ALLOCATE_BUFFER = &H100
Private Const FORMAT_MESSAGE_ARGUMENT_ARRAY = &H2000
Private Const FORMAT_MESSAGE_FROM_HMODULE = &H800
Private Const FORMAT_MESSAGE_FROM_STRING = &H400
Private Const FORMAT_MESSAGE_FROM_SYSTEM = &H1000
Private Const FORMAT_MESSAGE_IGNORE_INSERTS = &H200
Private Const FORMAT_MESSAGE_MAX_WIDTH_MASK = &HFF

Private Declare Function FormatMessage Lib "kernel32" Alias "FormatMessageA" (ByVal dwFlags As Long, lpSource As Any, ByVal dwMessageId As Long, ByVal dwLanguageId As Long, ByVal lpBuffer As String, ByVal nSize As Long, Arguments As Long) As Long

'ֻ���NT
Private Type LARGE_INTEGER
    LowPart As Long
    HighPart As Long
End Type

Private Type LUID
    LowPart As Long
    HighPart As Long
End Type

Private Type LUID_AND_ATTRIBUTES
    pLuid As LUID
    Attributes As Long
End Type

Private Type TOKEN_PRIVILEGES
    PrivilegeCount As Long
    Privileges(0 To 0) As LUID_AND_ATTRIBUTES
End Type

Private Declare Function GetCurrentProcess Lib "kernel32" () As Long
Private Declare Function OpenProcessToken Lib "advapi32.dll" (ByVal ProcessHandle As Long, ByVal DesiredAccess As Long, TokenHandle As Long) As Long
Private Declare Function CloseHandle Lib "kernel32" (ByVal hObject As Long) As Long
Private Declare Function GetTokenInformation Lib "advapi32.dll" (ByVal TokenHandle As Long, TokenInformationClass As Integer, TokenInformation As Any, ByVal TokenInformationLength As Long, ReturnLength As Long) As Long
Private Declare Function AdjustTokenPrivileges Lib "advapi32.dll" (ByVal TokenHandle As Long, ByVal DisableAllPrivileges As Long, NewState As TOKEN_PRIVILEGES, ByVal BufferLength As Long, PreviousState As TOKEN_PRIVILEGES, ReturnLength As Long) As Long
Private Declare Function LookupPrivilegeValue Lib "advapi32.dll" Alias "LookupPrivilegeValueA" (ByVal lpSystemName As String, ByVal lpName As String, lpLuid As LUID) As Long

Private Const SE_SHUTDOWN_NAME = "SeShutdownPrivilege"
Private Const SE_PRIVILEGE_ENABLED = &H2

Private Const READ_CONTROL = &H20000
Private Const STANDARD_RIGHTS_ALL = &H1F0000
Private Const STANDARD_RIGHTS_EXECUTE = (READ_CONTROL)
Private Const STANDARD_RIGHTS_READ = (READ_CONTROL)
Private Const STANDARD_RIGHTS_REQUIRED = &HF0000
Private Const STANDARD_RIGHTS_WRITE = (READ_CONTROL)

Private Const TOKEN_ASSIGN_PRIMARY = &H1
Private Const TOKEN_DUPLICATE = (&H2)
Private Const TOKEN_IMPERSONATE = (&H4)
Private Const TOKEN_QUERY = (&H8)
Private Const TOKEN_QUERY_SOURCE = (&H10)
Private Const TOKEN_ADJUST_PRIVILEGES = (&H20)
Private Const TOKEN_ADJUST_GROUPS = (&H40)
Private Const TOKEN_ADJUST_DEFAULT = (&H80)
Private Const TOKEN_ALL_ACCESS = (STANDARD_RIGHTS_REQUIRED Or _
TOKEN_ASSIGN_PRIMARY Or _
TOKEN_DUPLICATE Or _
TOKEN_IMPERSONATE Or _
TOKEN_QUERY Or _
TOKEN_QUERY_SOURCE Or _
TOKEN_ADJUST_PRIVILEGES Or _
TOKEN_ADJUST_GROUPS Or _
TOKEN_ADJUST_DEFAULT)
Private Const TOKEN_READ = (STANDARD_RIGHTS_READ Or TOKEN_QUERY)
Private Const TOKEN_WRITE = (STANDARD_RIGHTS_WRITE Or TOKEN_ADJUST_PRIVILEGES Or TOKEN_ADJUST_GROUPS Or TOKEN_ADJUST_DEFAULT)
Private Const TOKEN_EXECUTE = (STANDARD_RIGHTS_EXECUTE)

Private Const TokenDefaultDacl = 6
Private Const TokenGroups = 2
Private Const TokenImpersonationLevel = 9
Private Const TokenOwner = 4
Private Const TokenPrimaryGroup = 5
Private Const TokenPrivileges = 3
Private Const TokenSource = 7
Private Const TokenStatistics = 10
Private Const TokenType = 8
Private Const TokenUser = 1

Private Function WinError(ByVal lLastDLLError As Long) As String
    Dim sBuff As String
    Dim lCount As Long
    '������ LastDLLError �йصĴ�����Ϣ:
    sBuff = String$(256, 0)
    lCount = FormatMessage( _
    FORMAT_MESSAGE_FROM_SYSTEM Or FORMAT_MESSAGE_IGNORE_INSERTS, 0, lLastDLLError, 0&, sBuff, Len(sBuff), ByVal 0)
    If lCount Then
        WinError = Left$(sBuff, lCount)
    End If
End Function

'��ȡWindows�汾
'�ṹOSVERSIONINFO.dwPlatformIdz�д洢ֵ��0 -- Windows 32�� 1 -- Windows 95/98�� 2 -- Windows NT/2000
Private Function IsNT() As Boolean
    Static bOnce As Boolean
    Static bValue As Boolean
    '����ϵͳ�Ƿ���NT:
    If Not (bOnce) Then
        Dim tVI As OSVERSIONINFO
        tVI.dwOSVersionInfoSize = Len(tVI)
        If (GetVersionEx(tVI) <> 0) Then
            bValue = (tVI.dwPlatformId = VER_PLATFORM_WIN32_NT)
            bOnce = True
        End If
    End If
    IsNT = bValue
End Function

Private Function NTEnableShutDown(ByRef sMsg As String) As Boolean
    Dim tLUID As LUID
    Dim hProcess As Long
    Dim hToken As Long
    Dim tTP As TOKEN_PRIVILEGES, tTPOld As TOKEN_PRIVILEGES
    Dim lTpOld As Long
    Dim lR As Long
    '��NT�£������������ر�ϵͳ�ĳ������ SE_SHUTDOWN_NAME Ȩ�ޣ�������򽫲����κ�����
    'ȡ�ùػ�Ȩ�ޱ�ǵ�LUID:
    lR = LookupPrivilegeValue(vbNullString, SE_SHUTDOWN_NAME, tLUID)
    If (lR <> 0) Then
        'ȡ�õ�ǰ���̵ľ��:
        hProcess = GetCurrentProcess()
        If (hProcess <> 0) Then
            '�Ƿ��ܹ�����:
            lR = OpenProcessToken(hProcess, TOKEN_ADJUST_PRIVILEGES Or TOKEN_QUERY, hToken)
            If (lR <> 0) Then
                '����:
                With tTP
                    .PrivilegeCount = 1
                    With .Privileges(0)
                        .Attributes = SE_PRIVILEGE_ENABLED
                        .pLuid.HighPart = tLUID.HighPart
                        .pLuid.LowPart = tLUID.LowPart
                    End With
                End With
                'ʹ�ý��̿��Թر�ϵͳ:
                lR = AdjustTokenPrivileges(hToken, 0, tTP, Len(tTP), tTPOld, lTpOld)
                If (lR <> 0) Then
                    NTEnableShutDown = True
                Else
                    Err.Raise eeSSDErrorBase + 6, App.EXEName & ".mShutDown", "Can't enable shutdown: You do not have the privileges to shutdown this system. [" & WinError(Err.LastDllError) & "]"
                End If
                '��������һ��:
                CloseHandle hToken
            Else
                Err.Raise eeSSDErrorBase + 6, App.EXEName & ".mShutDown", "Can't enable shutdown: You do not have the privileges to shutdown this system. [" & WinError(Err.LastDllError) & "]"
            End If
        Else
            Err.Raise eeSSDErrorBase + 5, App.EXEName & ".mShutDown", "Can't enable shutdown: Can't determine the current process. [" & WinError(Err.LastDllError) & "]"
        End If
    Else
        Err.Raise eeSSDErrorBase + 4, App.EXEName & ".mShutDown", "Can't enable shutdown: Can't find the SE_SHUTDOWN_NAME privilege value. [" & WinError(Err.LastDllError) & "]"
    End If
End Function

Private Function ShutdownSystem(Optional ByVal eType As EShutDownTypes = REBOOT) As Boolean
    Dim lR As Long
    Dim sMsg As String
    '��֤shutdown����:
    If (eType < EShutDownTypes.[_First] And eType > EShutDownTypes.[_Last]) Then
        Err.Raise eeSSDErrorBase + 7, App.EXEName & ".mShutDown", "Invalid parameter to ShutdownSystem: " & eType, vbInformation
        Exit Function
    End If
    '�����NT�£�ȷ�ϱ�������йػ���Ȩ��
    If (IsNT) Then
        If Not (NTEnableShutDown(sMsg)) Then
            Exit Function
        End If
    End If
    '��������ڹػ��Ĵ��룬�򵥰ɣ�
    lR = ExitWindowsEx(eType, &HFFFFFFFF)
    If (lR = 0) Then
        Err.Raise eeSSDErrorBase + 3, App.EXEName & ".mShutDown", "ShutdownSystem failed: " & WinError(Err.LastDllError)
    Else
        ShutdownSystem = True
    End If
'��win2000����NT�У��ػ�����Ҫһ��Ȩ�޵ġ��������һ��������ģ�飬��������Ϊһ��bas�ļ������е�һ����Ҫ�������ǣ�ShutdownSystem()
'
'���ø�ʽ:
'2000 �йػ�: Call ShutdownSystem(POWEROFF)
'98 �йػ�: Call ShutdownSystem(SHUTDOWN)
'����: Call ShutdownSystem(REBOOT)
End Function

'
'----------------------
Private Sub always_on_top(on_top As Boolean)
    Dim flags As Integer
    flags = SWP_NOSIZE Or SWP_NOMOVE Or SWP_SHOWWINDOW
    If on_top = True Then
        SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, flags
    Else
        SetWindowPos Me.hWnd, -2, 0, 0, 0, 0, flags
    End If
End Sub

Private Sub canncel_shut_Click()
    shutdown_timer.Enabled = False
    Unload Me
End Sub

Private Sub Form_Load()
    always_on_top True
    count_times = 0
    shutdown_timer.Enabled = True
End Sub



Private Sub shutdown_timer_Timer()
    If count_times < 60 Then
        count_times = count_times + 1
        infro.caption = "������ " & (60 - count_times) & " ����Զ��ػ�" & Chr(13) & "�뱣��������Ҫ����" & Chr(13) & Chr(13) & "������水ťȡ���Զ��ػ�"
    Else
        shutdown_timer.Enabled = False
        If (IsNT) Then
            Call ShutdownSystem(POWEROFF)
        Else
            Call ShutdownSystem(SHUTDOWN)
        End If
        Unload Form1
        End
    End If
End Sub
