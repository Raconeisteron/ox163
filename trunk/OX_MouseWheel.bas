Attribute VB_Name = "OX_MouseWheel"
'HKEY_CURRENT_USER\ControlPanel\Desktop\LogPixels
'win10Ԥ�������ż���>100%,��LogPixels>96ʱ��λƫ�ƣ���֧�ֹ���
'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\CurrentVersion>6.3Ϊwin10
Option Explicit
Private Declare Function CallWindowProc Lib "user32" Alias "CallWindowProcA" (ByVal lpPrevWndFunc As Long, ByVal hwnd As Long, ByVal msg As Long, ByVal wParam As Long, ByVal lParam As Long) As Long
Private Declare Function GetWindowLong Lib "user32" Alias "GetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long) As Long
Private Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long
Private Const GWL_WNDPROC = -4&
Private Const WM_MOUSEWHEEL = &H20A
Private Declare Function GetCursorPos Lib "user32" (lpPoint As POINTAPI) As Long
Private Declare Function WindowFromPoint Lib "user32" (ByVal xPoint As Long, ByVal yPoint As Long) As Long
Private Type POINTAPI
        X As Long
        Y As Long
End Type
Private OldWindowProc As Long '��������ϵͳĬ�ϵĴ�����Ϣ�������ĵ�ַ
Private OX_hwndBox() As String   '��������ؼ��ľ��

'�Զ������Ϣ������
Private Function OX_MouseWheel(ByVal hwnd As Long, ByVal msg As Long, ByVal wParam As Long, ByVal lParam As Long) As Long
    On Error Resume Next
    If msg = WM_MOUSEWHEEL Then
        '����õ����λ�ô��Ķ���ľ��
        Dim CurPoint As POINTAPI, hwndUnderCursor As Long
        GetCursorPos CurPoint
        hwndUnderCursor = WindowFromPoint(CurPoint.X, CurPoint.Y)
        '������λ��supermap�ڲ�������������¼����д���
        If OX_IsEheelArea(hwndUnderCursor) Then
            If wParam = -7864320 Then '���¹���
                sys.FrameL1_bgvs.Value = sys.FrameL1_bgvs.Value + 1
               
            ElseIf wParam = 7864320 Then '���Ϲ���
                sys.FrameL1_bgvs.Value = sys.FrameL1_bgvs.Value - 1
            End If
        End If
    Else
        '����summap��Ĭ�ϴ�����Ϣ������
        OX_MouseWheel = CallWindowProc(OldWindowProc, hwnd, msg, wParam, lParam)
    End If
End Function

'������Ӧ���ֵĿؼ��������
Public Sub OX_SetWheelArea(ByVal hwnd As String)
Dim split_hwnd
split_hwnd = Split(hwnd, ",")
OX_hwndBox = split_hwnd
End Sub

'������Ӧ���ֵĿؼ����
Private Function OX_IsEheelArea(ByVal hwnd As Long) As Boolean
Dim i As Integer
OX_IsEheelArea = False
For i = 0 To UBound(OX_hwndBox)
If CStr(hwnd) = Trim(OX_hwndBox(i)) Then OX_IsEheelArea = True: Exit Function
Next
End Function
Public Sub OX_SetWheelStart(ByVal hwnd As Long)
    OX_SetWheelArea hwnd
    '����Ĭ�ϴ�����Ϣ��������ַ
    OldWindowProc = GetWindowLong(hwnd, GWL_WNDPROC)
    '��smMap�ؼ�����Ϣ������ָ��Ϊ�Զ��庯��NewWindowProc
    Call SetWindowLong(hwnd, GWL_WNDPROC, AddressOf OX_MouseWheel)
End Sub


