VERSION 5.00
Begin VB.Form start_ox163 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   0  'None
   Caption         =   "OX163 starting page"
   ClientHeight    =   3390
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   6000
   Icon            =   "start.frx":0000
   LinkTopic       =   "start_ox163"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "start.frx":406A
   ScaleHeight     =   3390
   ScaleWidth      =   6000
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  '��Ļ����
   Begin VB.PictureBox Picture1 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   3390
      Left            =   0
      Picture         =   "start.frx":91F1
      ScaleHeight     =   3390
      ScaleWidth      =   6000
      TabIndex        =   0
      Top             =   0
      Width           =   6000
      Begin VB.Timer Timer2 
         Enabled         =   0   'False
         Left            =   0
         Top             =   1080
      End
      Begin VB.Timer Timer1 
         Left            =   0
         Top             =   720
      End
      Begin VB.TextBox start_text 
         Appearance      =   0  'Flat
         BorderStyle     =   0  'None
         Enabled         =   0   'False
         ForeColor       =   &H000000FF&
         Height          =   1335
         Left            =   2760
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   3
         Top             =   2040
         Width           =   3135
      End
      Begin VB.CommandButton Com1 
         Caption         =   "�˳�����(QUIT)"
         Height          =   420
         Left            =   4200
         TabIndex        =   2
         Top             =   0
         Visible         =   0   'False
         Width           =   1695
      End
      Begin VB.CommandButton Com5 
         Caption         =   "���رձ�����"
         Height          =   420
         Left            =   2160
         TabIndex        =   1
         Top             =   0
         Visible         =   0   'False
         Width           =   1695
      End
   End
End
Attribute VB_Name = "start_ox163"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Private Declare Function SetLayeredWindowAttributes Lib "user32" (ByVal hwnd As Long, ByVal crKey As Long, ByVal bAlpha As Byte, ByVal dwFlags As Long) As Long
'Private Declare Function GetWindowLong Lib "user32" Alias "GetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long) As Long
'Private Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long
'Private Const WS_EX_LAYERED = &H80000
'Private Const GWL_EXSTYLE = (-20)
'Private Const LWA_ALPHA = &H2
'Private Const LWA_COLORKEY = &H1
'Private Sub Start_Form_alph()
'    BorderStyler = 0
'    rtn = GetWindowLong(hwnd, GWL_EXSTYLE)
'    rtn = rtn Or WS_EX_LAYERED
'    SetWindowLong hwnd, GWL_EXSTYLE, rtn
'    SetLayeredWindowAttributes hwnd, &HFFFFFF, 0, LWA_COLORKEY
'End Sub

Private Sub Com1_Click()
    End
End Sub

Private Sub Com5_Click()
    Unload start_ox163
End Sub

Private Sub Form_Load()
    Timer1.Interval = 100
    Timer1.Enabled = True
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Timer1.Enabled = False
    Timer1.Interval = 0
End Sub

Private Sub start_text_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 65 And Shift = vbCtrlMask Then
        start_text.SelStart = 0
        start_text.SelLength = Len(start_text.Text)
    End If
End Sub

Private Sub Timer1_Timer()
    On Error Resume Next
    
    Static timer1_counter As Boolean
    
    Timer1.Enabled = False
    Timer1.Interval = 0
    
    If timer1_counter = False Then
        timer1_counter = True
    Else
        Exit Sub
    End If
    
    'App.PrevInstance ����Ƿ�࿪���� Fû�У� T�࿪
    'Dim logfile As String
    'logfile = App.Path & "\OX163-" & Format(Now(), "YYYY.MM.DD-HH.MM.SS") & ".log"
    'Open logfile For Binary Access Write As #1
    'Close #1
    'App.StartLogging App.Path & logfile, vbLogAuto
    'App.LogEvent "engilsh", 4
    
    Dim test_Object As Object
    Dim start_check1, start_check2
    Dim step_counter As Integer
    
    '�ж�Non Unicode��������,����ʾ
    If GetOSLCID <> 1 Then MsgBox "Your System Lanuages for Non Unicode Program is not Simplified Chinese." _
        & vbCrLf & "If you want to get a better experience.(No distortion No unknow Error & etc.)" _
        & vbCrLf & "You should open" _
        & vbCrLf & "'Control Panel'->'Region and Language'->'Administrative'" _
        & vbCrLf & "Change 'language for non-Unicode programs' to 'Chinese(Simplified, PRC)'." _
        & vbCrLf & "When you have finished setting, you need to restart your computer.", vbOKOnly
    '--------------------------------------------------------
    start_text.Text = "��������:"
    step_counter = 0
    err.Clear
    '-----------------------------------------------------------------------------------------
    
    step_counter = step_counter + 1: start_text.Text = start_text.Text & vbCrLf & vbCrLf & "//step." & step_counter & "//"
    start_text.Text = start_text.Text & vbCrLf & "���msvbvm60.dll"
    start_check1 = ""
    start_check2 = ""
    start_check1 = FileDateTime(GetSysDir & "\..\system32\msvbvm60.dll")
    start_check2 = FileDateTime(GetSysDir & "\..\sysWOW64\msvbvm60.dll")
    If start_check1 = "" And start_check2 = "" Then
        start_text.Text = start_text.Text & "ϵͳ�ļ�����msvbvm60.dll���ܲ�����(һ�������Ӱ�����ʹ��)"
    End If
    If err.Number <> 0 Then
        start_text.Text = start_text.Text & vbCrLf & "error" & err.Number & "��" & err.Description
        err.Clear
    Else
        start_text.Text = start_text.Text & "...OK"
    End If
    
    start_text.SelStart = Len(start_text.Text)
    '------------------------------------------------------------------------------------------
    
    step_counter = step_counter + 1: start_text.Text = start_text.Text & vbCrLf & vbCrLf & "//step." & step_counter & "//"
    start_text.Text = start_text.Text & vbCrLf & "���scrrun.dll" & vbCrLf & "����FileSystemObject"
    err.Clear
    Set test_Object = CreateObject("Scripting.FileSystemObject")
    If err.Number <> 0 Then
        start_text.Text = start_text.Text & vbCrLf & "Error-" & err.Number & ": " & err.Description
        start_text.Text = start_text.Text & vbCrLf & "�޷�����FileSystemObject����������޷���������unicode�ַ�" & vbCrLf & "��������Ҫ�޸�windowsϵͳ�ļ���scrrun.dll���������趨FileSystemObjectȨ��"
        App_path = App.Path
    Else
        start_text.Text = start_text.Text & "...OK"
        '��񻯳�������·���Ķ�·����
        start_check1 = IIf(Right(App.Path, 1) = "\", App.Path, App.Path & "\")
        App_path = test_Object.GetAbsolutePathName("")
        App_path = IIf(Right(App_path, 1) = "\", App_path, App_path & "\")
        App_path = IIf((InStr(start_check1, Chr(63)) < 1 And App_path <> start_check1), start_check1, App_path)
        App_path = GetShortName(App_path)
        start_text.Text = start_text.Text & vbCrLf & "������Ŀ¼��·��-> " & App_path
    End If
    
    Set test_Object = Nothing
    
    start_text.SelStart = Len(start_text.Text)
    '------------------------------------------------------------------------------------------
    
    step_counter = step_counter + 1: start_text.Text = start_text.Text & vbCrLf & vbCrLf & "//step." & step_counter & "//"
    start_text.Text = start_text.Text & vbCrLf & "���msinet.ocx" & vbCrLf & "����Inet�ؼ�"
    err.Clear
    Set test_Object = CreateObject("InetCtls.Inet.1")
    If err.Number <> 0 Then
        start_text.Text = start_text.Text & vbCrLf & "Error-" & err.Number & ": " & err.Description
        start_text.Text = start_text.Text & vbCrLf & "�޷���������Inet�ؼ�����������޷�������ҳ��ͼƬ" & vbCrLf & "��������Ҫ�޸�windowsϵͳ�ļ���msinet.ocx (32λ)"
    Else
        start_text.Text = start_text.Text & "...OK"
    End If
    
    Set test_Object = Nothing
    
    start_text.SelStart = Len(start_text.Text)
    
    '------------------------------------------------------------------------------------------
    
    step_counter = step_counter + 1: start_text.Text = start_text.Text & vbCrLf & vbCrLf & "//step." & step_counter & "//"
    start_text.Text = start_text.Text & vbCrLf & "���wininet.dll" & vbCrLf & "����InternetGetCookie"
    
    err.Clear
    GetCookie "http://www.163.com"
    If err.Number <> 0 Then
        start_text.Text = start_text.Text & vbCrLf & "Error-" & err.Number & ": " & err.Description
        start_text.Text = start_text.Text & vbCrLf & "�޷���������wininetӦ�ã���������޷���ȡҳ��cookies����Inet�ؼ���ʧЧ" & vbCrLf & "��������Ҫ�޸�windowsϵͳ�ļ���wininet.dll"
    Else
        start_text.Text = start_text.Text & "...OK"
    End If
    
    start_text.SelStart = Len(start_text.Text)
    
    '------------------------------------------------------------------------------------------
    
    step_counter = step_counter + 1: start_text.Text = start_text.Text & vbCrLf & vbCrLf & "//step." & step_counter & "//"
    start_text.Text = start_text.Text & vbCrLf & "���comdlg32.dll" & vbCrLf & "����CommonDialog"
    err.Clear
    Set test_Object = CreateObject("MSComDlg.CommonDialog.1")
    If err.Number <> 0 Then
        start_text.Text = start_text.Text & vbCrLf & "Error-" & err.Number & ": " & err.Description
        start_text.Text = start_text.Text & vbCrLf & "�޷���������CommonDialog�Ի��򣺳�������޷������ļ������ѡ�񴰿�" & vbCrLf & "��������Ҫ�޸�windowsϵͳ�ļ���comdlg32.dll"
    Else
        start_text.Text = start_text.Text & "...OK"
    End If
    
    Set test_Object = Nothing
    
    start_text.SelStart = Len(start_text.Text)
    
    '------------------------------------------------------------------------------------------
    
    step_counter = step_counter + 1: start_text.Text = start_text.Text & vbCrLf & vbCrLf & "//step." & step_counter & "//"
    start_text.Text = start_text.Text & vbCrLf & "���mscomctl.ocx" & vbCrLf & "����ListView"
    err.Clear
    Set test_Object = CreateObject("MSComctlLib.ListViewctrl")
    If err.Number <> 0 Then
        start_text.Text = start_text.Text & vbCrLf & "Error-" & err.Number & ": " & err.Description
        start_text.Text = start_text.Text & vbCrLf & "�޷���������ListView�б���������޷����������б�" & vbCrLf & "��������Ҫ�޸�windowsϵͳ�ļ���mscomctl.ocx (32λ)"
    Else
        start_text.Text = start_text.Text & "...OK"
    End If
    
    Set test_Object = Nothing
    
    start_text.SelStart = Len(start_text.Text)
    
    '------------------------------------------------------------------------------------------
    
    step_counter = step_counter + 1: start_text.Text = start_text.Text & vbCrLf & vbCrLf & "//step." & step_counter & "//"
    start_text.Text = start_text.Text & vbCrLf & "���msscript.ocx" & vbCrLf & "����ScriptControl"
    err.Clear
    Set test_Object = CreateObject("MSScriptControl.ScriptControl")
    If err.Number <> 0 Then
        start_text.Text = start_text.Text & vbCrLf & "Error-" & err.Number & ": " & err.Description
        start_text.Text = start_text.Text & vbCrLf & "�޷���������ScriptControl����������޷������ⲿ�ű�" & vbCrLf & "��������Ҫ�޸�windowsϵͳ�ļ���msscript.ocx (32λ)"
    Else
        start_text.Text = start_text.Text & "...OK"
    End If
    
    Set test_Object = Nothing
    
    start_text.SelStart = Len(start_text.Text)
    
    '------------------------------------------------------------------------------------------
    
    step_counter = step_counter + 1: start_text.Text = start_text.Text & vbCrLf & vbCrLf & "//step." & step_counter & "//"
    start_text.Text = start_text.Text & vbCrLf & "���msado15.dll" & vbCrLf & "����ADODB.Stream"
    err.Clear
    Set test_Object = CreateObject("ADODB.Stream")
    If err.Number <> 0 Then
        start_text.Text = start_text.Text & vbCrLf & "Error-" & err.Number & ": " & err.Description
        start_text.Text = start_text.Text & vbCrLf & "�޷���������ADODB.Stream����������޷���ȷʶ���ı��ַ����ͼ����ⲿ�ű�" & vbCrLf & "��������Ҫ�޸�Program Files\Common Files\System\ado\�е�msado15.dll"
    Else
        start_text.Text = start_text.Text & "...OK"
    End If
    
    Set test_Object = Nothing
    
    start_text.SelStart = Len(start_text.Text)
    '------------------------------------------------------------------------------------------
    
    step_counter = step_counter + 1: start_text.Text = start_text.Text & vbCrLf & vbCrLf & "//step." & step_counter & "//"
    start_text.Text = start_text.Text & vbCrLf & "����ļ���"
    err.Clear
    If Dir(App_path & "\download", vbDirectory) = "" Then
    start_text.Text = start_text.Text & vbCrLf & "����download�ļ���"
        MkDir App_path & "\download"
    End If
    
    If Dir(App_path & "\url", vbDirectory) = "" Then
    start_text.Text = start_text.Text & vbCrLf & "����url�ļ���"
        MkDir App_path & "\url"
    End If
    
    If Dir(App_path & "\include", vbDirectory) = "" Then
    start_text.Text = start_text.Text & vbCrLf & "����include�ļ���"
        MkDir App_path & "\include"
    End If
    
    If Dir(App_path & "\include\sys", vbDirectory) = "" Then
    start_text.Text = start_text.Text & vbCrLf & "����include\sys�ļ���"
        MkDir App_path & "\include\sys"
    End If
    
    If Dir(App_path & "\include\custom", vbDirectory) = "" Then
    start_text.Text = start_text.Text & vbCrLf & "����include\custom�ļ���"
        MkDir App_path & "\include\custom"
    End If
    
    If err.Number <> 0 Then
        start_text.Text = start_text.Text & vbCrLf & "Error-" & err.Number & ": " & err.Description
        start_text.Text = start_text.Text & vbCrLf & "Ĭ���ļ��д��󣺳�����򴴽�Ĭ���ļ���ʧ��" & vbCrLf & "���ֶ�������Ŀ¼�������ļ����Ƿ����:"
        start_text.Text = start_text.Text & vbCrLf & "\url" & vbCrLf & "\download" & vbCrLf & "\include" & vbCrLf & "\include\sys" & vbCrLf & "\include\custom"
    Else
        start_text.Text = start_text.Text & "...OK"
    End If
    
    start_text.SelStart = Len(start_text.Text)
    
    '------------------------------------------------------------------------------------------
    
    step_counter = step_counter + 1: start_text.Text = start_text.Text & vbCrLf & vbCrLf & "//step." & step_counter & "//"
    start_text.Text = start_text.Text & vbCrLf & "��ʼ������Ĭ������"
    err.Clear
    sysSet = OX_Default_Setting
    If err.Number <> 0 Then
        start_text.Text = start_text.Text & vbCrLf & "Error-" & err.Number & ": " & err.Description
        start_text.Text = start_text.Text & vbCrLf & "��ʼ������Ĭ�����ô���"
    Else
        start_text.Text = start_text.Text & "...OK"
    End If
    '------------------------------------------------------------------------------------------
    
    step_counter = step_counter + 1: start_text.Text = start_text.Text & vbCrLf & vbCrLf & "//step." & step_counter & "//"
    start_text.Text = start_text.Text & vbCrLf & "���OX163setup.ini"
    err.Clear
    If Dir(App_path & "\OX163setup.ini") = "" Then
        start_text.Text = start_text.Text & vbCrLf & "OX163setup.ini������"
        start_text.Text = start_text.Text & vbCrLf & "���½���OX163setup.ini"
        'Ĭ�ϲ���
        start_check1 = 0
        start_check1 = OX_WriteIni_Setting(sysSet)
        If Int(start_check1) <> 0 Then
            start_text.Text = start_text.Text & vbCrLf & "Error-" & start_check1 & ": " & err.Description
            start_text.Text = start_text.Text & vbCrLf & "����OX163setup.ini�������󣬿��ܽ���ʧ��"
        Else
            start_text.Text = start_text.Text & "...OK"
        End If
    End If
    
    If err.Number <> 0 Then
        start_text.Text = start_text.Text & vbCrLf & "Error-" & err.Number & ": " & err.Description
        start_text.Text = start_text.Text & vbCrLf & "������OX163setup.ini�ļ�ʧ��" & vbCrLf & "��������޷����û򱣴��û���������"
        err.Clear
    Else
        start_text.Text = start_text.Text & "...OK"
    End If
    
    start_text.SelStart = Len(start_text.Text)
    '------------------------------------------------------------------------------------------
    
    step_counter = step_counter + 1: start_text.Text = start_text.Text & vbCrLf & vbCrLf & "//step." & step_counter & "//"
    start_text.Text = start_text.Text & vbCrLf & "��ȡOX163setup.ini"
    err.Clear
        start_check1 = 0
        start_check1 = OX_GetIni_Setting(sysSet)
        If Int(start_check1) <> 0 Then
            start_text.Text = start_text.Text & vbCrLf & "Error-" & start_check1 & ": " & err.Description
            start_text.Text = start_text.Text & vbCrLf & "��ȡOX163setup.ini��������,������Ҫ����������������д��ini"
        Else
            start_text.Text = start_text.Text & "...OK"
        End If
    
    start_text.SelStart = Len(start_text.Text)
    '------------------------------------------------------------------------------------------
    
    step_counter = step_counter + 1: start_text.Text = start_text.Text & vbCrLf & vbCrLf & "//��������//"
    If InStr(start_text.Text, "Error-") > 0 Then
        start_text.Text = start_text.Text & vbCrLf & vbCrLf & "�д����������Ե���Ϸ�'X (QUIT)'��ť�ر�"
    Else
        start_text.Text = start_text.Text & vbCrLf & vbCrLf & "һ�о���,����������,��ȷ������������,�޸���ť15�������"
    End If
    start_text.Text = start_text.Text & vbCrLf & vbCrLf & "Vista Win7 Win8���޷�����,�ɶԳ���������²���:" & vbCrLf & "�Ҽ� -> �Թ���Ա������г���"
    start_text.SelStart = Len(start_text.Text)
    start_text.Enabled = True
    Timer2.Interval = 15000
    Timer2.Enabled = True
    BrowserW_url = ""
    BrowserW_load_ok = True
    windows_destop_Width = start_ox163.Width + start_ox163.Left * 2
    windows_destop_Height = start_ox163.Height + start_ox163.Top * 2
    OX_Start_log = start_text
    Load History_Logs
    'History_Logs.Hide
    Form1.Show
End Sub

Private Sub Timer2_Timer()
    Timer2.Interval = 0
    Timer2.Enabled = False
    Com1.Visible = True
    Com5.Visible = True
End Sub
