Attribute VB_Name = "OX_variable"
Public Const title_info = "OX163 plus(0.5.7build120401 beta)"
Public Const ver_info = "57"
'Public Const update_host_info = "http://www.shanhaijing.net/163/|����Ĭ��" & vbCrLf & "http://shanhaijing.net/163/|����Ĭ��" & vbCrLf & "http://163.shanhaijing.net/163/|���ڱ���" & vbCrLf & "http://www.ugschina.com/163/|���ⱸ��"
Public Const update_host_info1 = "http://www.shanhaijing.net/163/|http://www.gamepast.net/163/|http://ox163.googlecode.com/svn/trunk/include/sys/"
Public Const update_host_info2 = "����Ĭ��|���ⱸ��|google code"
'------------------------------------------------------------------------------------
Public Const NIM_ADD = &H0
Public Const NIM_MODIFY = &H1
Public Const NIM_DELETE = &H2
Public Const NIF_MESSAGE = &H1
Public Const NIF_ICON = &H2
Public Const NIF_TIP = &H4

Public Const WM_MOUSEMOVE = &H200
Public Const WM_LBUTTONDOWN = &H201
Public Const WM_LBUTTONUP = &H202
Public Const WM_LBUTTONDBLCLK = &H203
Public Const WM_RBUTTONDOWN = &H204
Public Const WM_RBUTTONUP = &H205
Public Const WM_RBUTTONDBLCLK = &H206
Public Const WM_MBUTTONDOWN = &H207
Public Const WM_MBUTTONUP = &H208
Public Const WM_MBUTTONDBLCLK = &H209

Public Const SW_RESTORE = 9
Public Const SW_SHOW = 5
Public Const SW_HIDE = 0

Public Const WM_SYSCOMMAND = &H112
Public Const SC_RESTORE = &HF120&

'������ǰ�˲���----------------------------------------
Public Type NOTIFYICONDATA
    cbSize As Long
    hWnd As Long
    uId As Long
    uFlags As Long
    ucallbackMessage As Long
    hIcon As Long
    szTip As String * 256
End Type

Public TrayI As NOTIFYICONDATA


'BrowserW���ݡ��жϲ���----------------------------------------
Public BrowserW_url As String
Public BrowserW_load_ok As Boolean

'�ⲿ�ű��ű�ͷ��������Ҫ�����Լ�������-------------------
Type include_ScriptCode
    OX163_vbs_var As String
    OX163_vbs_fn As String
    OX163_js_var As String
    OX163_js_fn As String
End Type

'�ű����ô��ݲ���
Public in_Script_Code As include_ScriptCode
'������ű����Ʋ���
Public OX163_WebBrowser_scriptCode As String

'ȫ�ֳ�����Ŀ¼
Public App_path As String

'ϵͳ����------------------------------------------------
Type sysSetting
    '�汾
    ver As Integer
    '���·�����
    update_host As String
    '��������
    downloadblock As Long
    '������
    autocheck As Boolean
    'ִ��ʱ�˳�ѯ��
    askquit As Boolean
    'ִ��ʱ��ʾ�б�
    listshow As Boolean
    '���浽Ĭ���ļ���
    savedef As Boolean
    '���غ���ļ���
    openfloder As Boolean
    '�������ʱ���ٴ�ѯ������
    change_psw As Boolean
    '����������ǰ��
    always_top As Boolean
    '��ֹ��������
    new_ie_win As Boolean
    '����������OX163��
    ox163_ie_win As Boolean
    '���ӳ�ʱ
    time_out As Integer
    '���Դ���
    retry_times As Integer
    '��������б�ʽ
    list_type As Byte
    '�Զ�У��αͼ
    fix_rar As Byte
    'αͼ�ļ����б�
    fix_rar_name As String
    'ϵͳ����
    sysTray As Boolean
    '�Ƿ���Ĭ��·��
    def_path_tf As Boolean
    'Ĭ��·��
    def_path As String
    '�ⲿ�ű�ִ�з�ʽ
    include_script As String
    'ctrl+c�Ȳ����趨
    list_copy As Boolean
    '�������ļ��Ƚ�
    file_compare As Integer
    '�ײ���Ϣ��
    bottom_StatusBar As Boolean
    '��163�����֤�����
    new163passcode_def(2) As String
    '�б���Ƿ�ȫѡ
    check_all As Boolean
    '���������A for start fast
    proxy_A As String
    proxy_A_user As String
    proxy_A_pw As String
    '���������B for inet1 and header ckeck
    proxy_B As String
    proxy_B_user As String
    proxy_B_pw As String
    '���������ʹ�÷�ʽ
    proxy_A_type As Byte
    proxy_B_type As Byte
    '�Ƿ���URL�ļ���
    url_folder As Boolean
    'ʹ����163��������������
    new163pass_rules As Boolean
    'Unicode�ļ�/�ļ����ַ�����
    Unicode_File As Byte
    'Unicode�ı�����
    Unicode_Str As Byte
End Type

Public sysSet As sysSetting
