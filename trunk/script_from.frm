VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{48E59290-9880-11CF-9754-00AA00C00908}#1.0#0"; "MSINET.OCX"
Begin VB.Form script_from 
   Caption         =   "OX163 Script Setting"
   ClientHeight    =   4905
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   7065
   Icon            =   "script_from.frx":0000
   LinkTopic       =   "script_from"
   ScaleHeight     =   4905
   ScaleWidth      =   7065
   StartUpPosition =   2  '��Ļ����
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   10
      Left            =   720
      Top             =   1800
   End
   Begin InetCtlsObjects.Inet script_load 
      Left            =   0
      Top             =   1680
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      RequestTimeout  =   30
   End
   Begin MSComctlLib.ImageList Image_over 
      Left            =   0
      Top             =   1080
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   25
      ImageHeight     =   25
      MaskColor       =   14933984
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   5
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "script_from.frx":406A
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "script_from.frx":45C5
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "script_from.frx":4AAB
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "script_from.frx":5018
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "script_from.frx":557C
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ImageList Image_normal 
      Left            =   600
      Top             =   1080
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   25
      ImageHeight     =   25
      MaskColor       =   14933984
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   5
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "script_from.frx":5AB5
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "script_from.frx":6018
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "script_from.frx":6509
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "script_from.frx":6A76
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "script_from.frx":6FE0
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.Toolbar Toolbar 
      Align           =   1  'Align Top
      Height          =   690
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   7065
      _ExtentX        =   12462
      _ExtentY        =   1217
      ButtonWidth     =   1455
      ButtonHeight    =   1164
      AllowCustomize  =   0   'False
      Wrappable       =   0   'False
      Appearance      =   1
      Style           =   1
      ImageList       =   "Image_normal"
      HotImageList    =   "Image_over"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   7
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "�Զ�����"
            Key             =   "Update"
            Description     =   "Auto Update Script"
            Object.ToolTipText     =   "Auto Update Script"
            ImageIndex      =   1
            Style           =   5
            BeginProperty ButtonMenus {66833FEC-8583-11D1-B16A-00C0F0283628} 
               NumButtonMenus  =   4
               BeginProperty ButtonMenu1 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                  Key             =   "Update1"
                  Text            =   "ȫ������(&All)"
               EndProperty
               BeginProperty ButtonMenu2 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                  Key             =   "Update2"
                  Text            =   "ѡ�����(&Checked)"
               EndProperty
               BeginProperty ButtonMenu3 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                  Key             =   "Update3"
                  Text            =   "ȱʡ����(&Lack)"
               EndProperty
               BeginProperty ButtonMenu4 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                  Key             =   "Update4"
                  Text            =   "����(include.txt)"
               EndProperty
            EndProperty
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "���¼��"
            Key             =   "Check_html"
            Description     =   "Check again"
            Object.ToolTipText     =   "Check again"
            ImageIndex      =   2
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Enabled         =   0   'False
            Style           =   3
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "ֹͣ����"
            Key             =   "stop_script"
            Description     =   "Stop All"
            Object.ToolTipText     =   "Stop All"
            ImageIndex      =   3
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Enabled         =   0   'False
            Style           =   3
         EndProperty
         BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "�鿴��ҳ"
            Key             =   "View_web"
            Description     =   "View Homepage"
            Object.ToolTipText     =   "View Homepage"
            ImageIndex      =   4
         EndProperty
         BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "���Ŀ¼"
            Key             =   "Browse_Folder"
            Description     =   "Browse Folder"
            Object.ToolTipText     =   "Browse Folder"
            ImageIndex      =   5
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.StatusBar StatusBar 
      Align           =   2  'Align Bottom
      Height          =   240
      Left            =   0
      TabIndex        =   0
      Top             =   4665
      Width           =   7065
      _ExtentX        =   12462
      _ExtentY        =   423
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   2
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   3528
            MinWidth        =   3528
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   25400
            MinWidth        =   25400
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ListView script_list 
      Height          =   3420
      Left            =   0
      TabIndex        =   2
      ToolTipText     =   "Shift or Ctrl to MultiSelect"
      Top             =   720
      Width           =   5055
      _ExtentX        =   8916
      _ExtentY        =   6033
      View            =   3
      Arrange         =   1
      LabelEdit       =   1
      MultiSelect     =   -1  'True
      LabelWrap       =   -1  'True
      HideSelection   =   0   'False
      Checkboxes      =   -1  'True
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      _Version        =   393217
      Icons           =   "ImageList1"
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      Appearance      =   1
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      NumItems        =   5
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Key             =   "list_ID"
         Object.Tag             =   "sc_ID"
         Text            =   "���"
         Object.Width           =   1058
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Key             =   "script_name"
         Object.Tag             =   "sc_name"
         Text            =   "�ű�����"
         Object.Width           =   2293
      EndProperty
      BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Alignment       =   2
         SubItemIndex    =   2
         Key             =   "update_time"
         Object.Tag             =   "sc_time"
         Text            =   "����ʱ��"
         Object.Width           =   1764
      EndProperty
      BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   3
         Key             =   "local_info"
         Object.Tag             =   "sc_local"
         Text            =   "�������"
         Object.Width           =   1764
      EndProperty
      BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   4
         Key             =   "auto_update"
         Object.Tag             =   "sc_update"
         Text            =   "�������"
         Object.Width           =   1764
      EndProperty
   End
End
Attribute VB_Name = "script_from"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim script_txt As String
Dim script_down_ok As Boolean
Dim script_quit As Boolean
Dim strURL As String
Dim htmlCharsetType As String
Dim script_update_txt As String
Dim script_include As String
Dim local_include As String

Public Sub on_top(on_top As Boolean)
    Dim flags As Integer
    flags = SWP_NOSIZE Or SWP_NOMOVE Or SWP_SHOWWINDOW
    If on_top = True Then
        SetWindowPos script_from.hWnd, HWND_TOPMOST, 0, 0, 0, 0, flags
    Else
        SetWindowPos script_from.hWnd, -2, 0, 0, 0, 0, flags
    End If
End Sub


Private Sub Form_Load()
    On Error Resume Next
    on_top sysSet.always_top
    Toolbar.Buttons(1).Enabled = False
    Toolbar.Buttons(2).Enabled = False
    Form_Resize
    script_quit = True
    script_down_ok = True
    htmlCharsetType = "GB2312"
    
    Timer1.Enabled = True
    
End Sub

Private Sub Form_Resize()
    On Error Resume Next
    'Static max_size As Boolean
    If script_from.WindowState <> 1 Then
        If script_from.Width < 5000 Then script_from.Width = 5000
        If script_from.Height < 4000 Then script_from.Height = 4000
        script_list.Width = script_from.ScaleWidth
        script_list.Top = Toolbar.Top + Toolbar.Height + 50
        script_list.Left = Toolbar.Left
        script_list.Height = script_from.ScaleHeight - script_list.Top - StatusBar.Height
        script_list.ColumnHeaders.Item(3).Width = (script_list.Width - 2800) / 2
        script_list.ColumnHeaders.Item(4).Width = (script_list.Width - 2800) / 2 - 500
        StatusBar.Panels(2).Width = script_list.Width
        'frame_resize
    End If
End Sub

Private Function load_script(file_name)
    On Error Resume Next
    
    Dim fileline As String
    Open file_name For Input As #6
    Do While Not EOF(6)
        Line Input #6, fileline
        load_script = load_script + fileline & vbCrLf
        DoEvents
    Loop
    Close #6
    load_script = Left$(load_script, Len(load_script) - 2)
    
End Function

Private Sub Check_script()
    Dim update_split
    Dim include_split
    Dim def_thing
    Dim file_time
    
    script_load.Cancel
    script_down_ok = False
    strURL = Trim$("http://www.shanhaijing.net/163/script_update.vbs?ntime=" & CDbl(Now()))
    
    script_download
    
    Do While script_down_ok = False
        If script_quit = True Then Exit Sub
        DoEvents
    Loop
    script_update_txt = script_txt
    
    script_load.Cancel
    script_down_ok = False
    strURL = Trim$("http://www.shanhaijing.net/163/include.vbs?ntime=" & CDbl(Now()))
    
    script_download
    
    Do While script_down_ok = False
        If script_quit = True Then Exit Sub
        DoEvents
    Loop
    script_include = script_txt
    
    update_split = Split(script_update_txt, vbCrLf)
    
    script_list.ListItems.Clear
    If script_quit = True Then Exit Sub
    
    For i = 0 To UBound(update_split)
        DoEvents
        
        def_thing = ""
        
        include_split = Split(update_split(i), "|")
        
        '���
        script_list.ListItems.Add i + 1, , Format$(i + 1, "000")
        '�ű�����
        script_list.ListItems.Item(i + 1).ListSubItems.Add , , include_split(0)
        '����ʱ��
        script_list.ListItems.Item(i + 1).ListSubItems.Add , , include_split(1)
        
        If Dir(App.Path & "\include\" & include_split(0)) <> "" Then
            file_time = FileDateTime(App.Path & "\include\" & include_split(0))
            If DateDiff("s", include_split(1), file_time) < 0 Then
                def_thing = "10"
            ElseIf FileLen(App.Path & "\include\" & include_split(0)) <> include_split(2) Then
                def_thing = "10"
            Else
                def_thing = "11"
            End If
        Else
            def_thing = "00"
        End If
        '�������
        script_list.ListItems.Item(i + 1).ListSubItems.Add , , def_thing
        '�������
        script_list.ListItems.Item(i + 1).ListSubItems.Add , , ""
    Next i
    
    local_include = ""
    
    If Dir(App.Path & "\include\include.txt") <> "" Then
        
        local_include = load_script(App.Path & "\include\include.txt")
        
        If script_include <> local_include Then
            StatusBar.Panels(2) = "include.txt has not matched"
            '-------------------------------------------------------------------------------
            For i = 0 To UBound(update_split)
                DoEvents
                include_split = Split(script_include, vbCrLf)
                def_thing = Split(local_include, vbCrLf)
                
                For web_i = 0 To UBound(include_split)
                    If InStr(include_split(web_i), script_list.ListItems(i + 1).ListSubItems(1).Text & "|") = 1 Then
                        For local_i = 0 To UBound(def_thing)
                            If include_split(web_i) = def_thing(local_i) Then GoTo next_web_i
                        Next local_i
                        script_list.ListItems(i + 1).ListSubItems(3).Text = script_list.ListItems(i + 1).ListSubItems(3).Text & "0"
                        GoTo next_i
                    End If
next_web_i:
                Next web_i
                script_list.ListItems(i + 1).ListSubItems(3).Text = script_list.ListItems(i + 1).ListSubItems(3).Text & "1"
next_i:
            Next i
        Else
            StatusBar.Panels(2) = ""
            For i = 0 To UBound(update_split)
                DoEvents
                script_list.ListItems(i + 1).ListSubItems(3).Text = script_list.ListItems(i + 1).ListSubItems(3).Text & "1"
            Next i
            '-------------------------------------------------------------------------------
        End If
    Else
        StatusBar.Panels(2) = "include.txt can't be found"
    End If
    
    file_time = 0
    
    For i = 0 To UBound(update_split)
        DoEvents
        script_list.ListItems(i + 1).ListSubItems(3).Text = static_str(script_list.ListItems(i + 1).ListSubItems(3).Text)
        If (script_list.ListItems(i + 1).ListSubItems(3).Text Like "?0*") Then
            script_list.ListItems(i + 1).ListSubItems(4).Text = "YES"
            script_list.ListItems(i + 1).Checked = True
            file_time = file_time + 1
        Else
            script_list.ListItems(i + 1).ListSubItems(4).Text = "NO"
        End If
    Next i
    StatusBar.Panels(1) = script_list.ListItems.count & "(Files) / " & file_time & "(Update)"
End Sub

Private Function static_str(ByVal str_temp)
    '000,���ļ�������/include.txt��Ҫ����
    '001,���ļ�������/include.txt����Ҫ����
    '100,���ļ���Ҫ����/include.txt��Ҫ����
    '101,���ļ���Ҫ����/include.txt����Ҫ����
    '110,���ļ�����/include.txt��Ҫ����
    '111,���ļ�����/include.txt����Ҫ����
    If Len(str_temp) = 2 Then str_temp = str_temp & "0"
    Select Case str_temp
    Case "000"
        static_str = "000,���ļ�������/include.txt��Ҫ����"
    Case "001"
        static_str = "001,���ļ�������/include.txt����Ҫ����"
    Case "100"
        static_str = "100,���ļ���Ҫ����/include.txt��Ҫ����"
    Case "101"
        static_str = "101,���ļ���Ҫ����/include.txt����Ҫ����"
    Case "110"
        static_str = "110,���ļ�����/include.txt��Ҫ����"
    Case "111"
        static_str = "111,���ļ�����/include.txt����Ҫ����"
    Case Else
        static_str = "�������"
    End Select
End Function


Private Sub Form_Unload(Cancel As Integer)
    If script_quit = False And sysSet.askquit = True Then
        If MsgBox("����ִ�в������Ƿ��˳���", vbOKCancel + vbDefaultButton2, "�˳�ѯ��") = vbCancel Then Cancel = True: Exit Sub
    End If
    
    If Dir(App.Path & "\include\OX163_Web_Browser_ctrl.vbs") <> "" Then
        Form1.OX163_WebBrowser_scriptCode = load_script(App.Path & "\include\OX163_Web_Browser_ctrl.vbs")
        Form1.OX163_WebBrowser_scriptCode = Trim(Form1.OX163_WebBrowser_scriptCode)
    End If
    
    script_quit = True
End Sub

Private Sub Timer1_Timer()
    On Error Resume Next
    Timer1.Enabled = False
    
    Toolbar.Buttons(1).Enabled = False
    Toolbar.Buttons(2).Enabled = False
    Toolbar.Buttons(4).Enabled = True
    script_quit = False
    
    Check_script
    
    script_quit = True
    Toolbar.Buttons(1).Enabled = True
    Toolbar.Buttons(2).Enabled = True
    Toolbar.Buttons(4).Enabled = False
    
    If Form1.form_quit = False Then
        If MsgBox("����ִ�����أ����½ű����ܻ���Ǳ��Σ��" & vbCrLf & "�Ƿ����ִ�нű����£�", vbYesNo + vbDefaultButton2 + vbExclamation, "���棺") = vbNo Then Unload script_from
    End If
    
End Sub

Private Sub Toolbar_ButtonClick(ByVal Button As MSComctlLib.Button)
    On Error Resume Next
    
    
    If Dir(App.Path & "\include", vbDirectory) = "" Then
        MkDir App.Path & "\include"
    End If
    
    
    Select Case Button.Index
    Case 1
        Update_script "auto"
    Case 2
        Timer1.Enabled = False
        
        Toolbar.Buttons(1).Enabled = False
        Toolbar.Buttons(2).Enabled = False
        Toolbar.Buttons(4).Enabled = True
        script_quit = False
        
        Check_script
        
        script_quit = True
        Toolbar.Buttons(1).Enabled = True
        Toolbar.Buttons(2).Enabled = True
        Toolbar.Buttons(4).Enabled = False
    Case 4
        script_quit = True
    Case 6
        ShellExecute 0&, vbNullString, "http://script.shanhaijing.net/", vbNullString, vbNullString, vbNormalFocus
    Case 7
        Shell "explorer.exe " & Replace$(App.Path & "\include", "\\", "\"), vbNormalFocus
    End Select
End Sub

Private Sub Toolbar_ButtonMenuClick(ByVal ButtonMenu As MSComctlLib.ButtonMenu)
    On Error Resume Next
    Select Case ButtonMenu.Index
    Case 1
        Update_script "all"
        
    Case 2
        Update_script "checked"
        
    Case 3
        Update_script "lack"
        
    Case 4
        Dim fso, file
        Set fso = CreateObject("Scripting.FileSystemObject")
        Set file = fso.CreateTextFile(Replace$(App.Path & "\include\include.txt", "\\", "\"), True, False)
        file.Write script_include
        file.Close
        Toolbar.Buttons(1).Enabled = False
        Toolbar.Buttons(2).Enabled = False
        Toolbar.Buttons(4).Enabled = True
        script_quit = False
        
        Check_script
        
        script_quit = True
        Toolbar.Buttons(1).Enabled = True
        Toolbar.Buttons(2).Enabled = True
        Toolbar.Buttons(4).Enabled = False
        
    End Select
End Sub

Public Sub Update_script(update_type As String)
    On Error Resume Next
    
    Toolbar.Buttons(1).Enabled = False
    Toolbar.Buttons(2).Enabled = False
    Toolbar.Buttons(4).Enabled = True
    script_quit = False
    
    Dim include_txt As String
    Dim fso, file
    Dim no_include As Boolean
    
    include_txt = StatusBar.Panels(2)
    
    '--------------------------------------------------------
    StatusBar.Panels(2) = "Checking Script"
    '--------------------------------------------------------
    Select Case update_type
    Case "auto"
        For i = 1 To script_list.ListItems.count
            DoEvents
            If script_list.ListItems(i).ListSubItems(4).Text = "YES" Then
                script_list.ListItems(i).Checked = True
            Else
                script_list.ListItems(i).Checked = False
            End If
        Next i
        
    Case "all"
        For i = 1 To script_list.ListItems.count
            DoEvents
            script_list.ListItems(i).Checked = True
        Next i
        
    Case "checked"
        
    Case "lack"
        For i = 1 To script_list.ListItems.count
            DoEvents
            If (script_list.ListItems(i).ListSubItems(3).Text Like "0*") Then
                script_list.ListItems(i).Checked = True
            Else
                script_list.ListItems(i).Checked = False
            End If
        Next i
        
    End Select
    '--------------------------------------------------------
    StatusBar.Panels(2) = "Update Script"
    '--------------------------------------------------------
    For i = 1 To script_list.ListItems.count
        DoEvents
        If script_list.ListItems(i).Checked = True Then
            
            StatusBar.Panels(2) = "Update Script: " & script_list.ListItems(i).ListSubItems(1).Text
            
            script_load.Cancel
            script_down_ok = False
            strURL = Trim$("http://www.shanhaijing.net/163/" & script_list.ListItems(i).ListSubItems(1).Text & "?ntime=" & CDbl(Now()))
            
            script_download
            
            Do While script_down_ok = False
                If script_quit = True Then Exit Sub
                DoEvents
            Loop
            
            Set fso = CreateObject("Scripting.FileSystemObject")
            Set file = fso.CreateTextFile(Replace$(App.Path & "\include\" & script_list.ListItems(i).ListSubItems(1).Text, "\\", "\"), True, False)
            file.Write script_txt
            file.Close
            
        End If
    Next i
    
    '----------------------------------------------------------------------------
    If include_txt = "include.txt can't be found" Then
        StatusBar.Panels(2) = "Update include.txt"
        
        Set fso = CreateObject("Scripting.FileSystemObject")
        Set file = fso.CreateTextFile(Replace$(App.Path & "\include\include.txt", "\\", "\"), True, False)
        file.Write script_include
        file.Close
        
    ElseIf include_txt = "include.txt has not matched" Then
        StatusBar.Panels(2) = "Update include.txt"
        '----------------------------------------------------------------------------
        Dim inter_split
        Dim local_split
        
        If update_type = "all" Then
            local_include = script_include
            
            
        ElseIf update_type = "lack" Then
            
            inter_split = Split(script_include, vbCrLf)
            local_split = Split(local_include, vbCrLf)
            
            For inter_i = 0 To UBound(inter_split)
                DoEvents
                
                For local_i = 0 To UBound(local_split)
                    If inter_split(inter_i) = local_split(local_i) Then GoTo next_inter_lack
                Next local_i
                local_include = local_include & vbCrLf & inter_split(inter_i)
next_inter_lack:
            Next inter_i
            
            
        ElseIf update_type = "checked" Then
            
            
            For i = script_list.ListItems.count To 1 Step -1
                DoEvents
                If script_list.ListItems(i).Checked = True Then
                    inter_split = Split(script_include, vbCrLf)
                    local_split = Split(local_include, vbCrLf)
                    local_include = ""
                    
                    no_include = False
                    
                    For local_i = 0 To UBound(local_split)
                        If InStr(1, local_split(local_i), script_list.ListItems(i).ListSubItems(1).Text & "|", vbTextCompare) > 0 Then
                            local_split(local_i) = ""
                            no_include = True
                        End If
                    Next local_i
                    
                    For local_i = 0 To UBound(inter_split)
                        If InStr(1, inter_split(local_i), script_list.ListItems(i).ListSubItems(1).Text & "|", vbTextCompare) < 1 Then inter_split(local_i) = ""
                    Next local_i
                    
                    For local_i = 0 To UBound(local_split)
                        If local_split(local_i) <> "" Then
                            local_include = local_include & local_split(local_i) & vbCrLf
                        ElseIf inter_split(0) <> "fin." Then
                            DoEvents
                            For inter_i = 0 To UBound(inter_split)
                                If inter_split(inter_i) <> "" Then local_include = local_include & inter_split(inter_i) & vbCrLf
                            Next inter_i
                            inter_split(0) = "fin."
                        End If
                    Next local_i
                    
                    If no_include = False Then
                        DoEvents
                        For inter_i = 0 To UBound(inter_split)
                            If inter_split(inter_i) <> "" Then local_include = local_include & inter_split(inter_i) & vbCrLf
                        Next inter_i
                    End If
                    
                    local_include = Mid$(local_include, 1, Len(local_include) - 2)
                End If
            Next i
            
        Else 'auto
            
            For i = script_list.ListItems.count To 1 Step -1
                DoEvents
                If (script_list.ListItems(i).ListSubItems(3).Text Like "??0*") Then
                    inter_split = Split(script_include, vbCrLf)
                    local_split = Split(local_include, vbCrLf)
                    local_include = ""
                    
                    no_include = False
                    
                    For local_i = 0 To UBound(local_split)
                        If InStr(1, local_split(local_i), script_list.ListItems(i).ListSubItems(1).Text & "|", vbTextCompare) > 0 Then
                            local_split(local_i) = ""
                            no_include = True
                        End If
                    Next local_i
                    
                    For local_i = 0 To UBound(inter_split)
                        If InStr(1, inter_split(local_i), script_list.ListItems(i).ListSubItems(1).Text & "|", vbTextCompare) < 1 Then inter_split(local_i) = ""
                    Next local_i
                    
                    
                    For local_i = 0 To UBound(local_split)
                        If local_split(local_i) <> "" Then
                            local_include = local_include & local_split(local_i) & vbCrLf
                        ElseIf inter_split(0) <> "fin." Then
                            DoEvents
                            For inter_i = 0 To UBound(inter_split)
                                If inter_split(inter_i) <> "" Then local_include = local_include & inter_split(inter_i) & vbCrLf
                            Next inter_i
                            inter_split(0) = "fin."
                        End If
                    Next local_i
                    
                    If no_include = False Then
                        DoEvents
                        For inter_i = 0 To UBound(inter_split)
                            If inter_split(inter_i) <> "" Then local_include = local_include & inter_split(inter_i) & vbCrLf
                        Next inter_i
                    End If
                    
                    local_include = Mid$(local_include, 1, Len(local_include) - 2)
                End If
            Next i
            
        End If
        '------------------------------����include.txt--------------------------------
        inter_split = Split(script_include, vbCrLf)
        local_split = Split(local_include, vbCrLf)
        local_include = ""
        include_txt = ""
        For inter_i = 0 To UBound(inter_split)
            If include_txt <> Mid$(inter_split(inter_i), 1, InStr(inter_split(inter_i), "|")) Then
                include_txt = Mid$(inter_split(inter_i), 1, InStr(inter_split(inter_i), "|"))
                For local_i = 0 To UBound(local_split)
                    If InStr(1, local_split(local_i), include_txt, vbTextCompare) > 0 Then
                        local_include = local_include & local_split(local_i) & vbCrLf
                        local_split(local_i) = ""
                    End If
                Next local_i
            End If
        Next inter_i
        
        For local_i = 0 To UBound(local_split)
            If local_split(local_i) <> "" Then
                local_include = local_include & local_split(local_i) & vbCrLf
                local_split(local_i) = ""
            End If
        Next local_i
        local_include = Mid$(local_include, 1, Len(local_include) - 2)
        '----------------------------------------------------------------------------
        Set fso = CreateObject("Scripting.FileSystemObject")
        Set file = fso.CreateTextFile(Replace$(App.Path & "\include\include.txt", "\\", "\"), True, False)
        file.Write local_include
        file.Close
        
    End If
    StatusBar.Panels(2) = ""
    '----------------------------------------------------
    Check_script
    
    script_quit = True
    Toolbar.Buttons(1).Enabled = True
    Toolbar.Buttons(2).Enabled = True
    Toolbar.Buttons(4).Enabled = False
End Sub


Private Sub script_load_StateChanged(ByVal State As Integer)
    If script_quit = True Then script_load.Cancel
    DoEvents
    
    On Error Resume Next
    Dim vtData As Variant '���ݱ���
    Dim binBuffer() As Byte
    Dim firt_byte As Boolean
    Dim buff() As Byte
    
    Select Case State
        
    Case icResponseCompleted
        
        firt_byte = False
        
        Do   '�ӻ�������ȡ����
            DoEvents
            vtData = script_load.GetChunk(51200, icByteArray)
            binBuffer = vtData
            If firt_byte = False Then
                buff = vtData
                firt_byte = True
            Else
                buff = UniteByteArray(buff, binBuffer)
            End If
        Loop Until (LenB(vtData) = 0)
        
        script_txt = bin2str(buff)
        
        script_down_ok = True
    Case icError
        '������ͨ�ų���
        Call script_download
    End Select
    
End Sub

Public Sub script_download()
    DoEvents
    '�ļ���Сֵ��λ
    On Error GoTo err_ctrl
    
    '����ITC�ؼ�ʹ�õ�Э��ΪHTTPЭ��
    script_load.Protocol = icHTTP
    
    '����Execute������Web����������HTTP����
    script_load.Execute Trim$(strURL), "GET"
    Exit Sub
    
err_ctrl:
    script_load.Cancel
    
    script_down_ok = True
End Sub

Private Function bin2str(ByVal binstr)
    On Error Resume Next
    Const adTypeBinary = 1
    Const adTypeText = 2
    Dim BytesStream, StringReturn
    Set BytesStream = CreateObject("ADODB.Stream") '����һ��������
    With BytesStream
        .Type = adTypeText
        .Open
        .WriteText binstr
        .Position = 0
        .Charset = htmlCharsetType
        .Position = 2
        StringReturn = .ReadText
        .Close
    End With
    Set BytesStream = Nothing
    bin2str = StringReturn
End Function


Private Function UniteByteArray(bBa1() As Byte, bBa2() As Byte) As Byte()
    On Error Resume Next
    Dim bUb() As Byte
    Dim iUbd1 As Single
    Dim iUbd2 As Single
    Dim i As Single
    
    iUbd1 = UBound(bBa1)
    iUbd2 = UBound(bBa2)
    ReDim bUb(0 To iUbd1 + iUbd2 + 1) As Byte
    For i = 0 To iUbd1
        DoEvents
        bUb(i) = bBa1(i)
    Next i
    For i = iUbd1 + 1 To UBound(bUb)
        DoEvents
        bUb(i) = bBa2(i - iUbd1 - 1)
    Next i
    UniteByteArray = bUb
End Function
