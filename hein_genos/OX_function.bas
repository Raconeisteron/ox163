Attribute VB_Name = "OX_function"
'debug�����ú���---------------------------------------------------
Public Sub OX_Debug_File(ByVal Debug_file_String As String)
    Dim FileNumber
    FileNumber = FreeFile ' ȡ��δʹ�õ��ļ��š�
    Open "C:\OX163_Debug_File(" & Now() & ").txt" For Output As #FileNumber   ' �����ļ�����
    Write #FileNumber, Debug_file_String ' ����ı����ļ��С�
    Close #FileNumber   ' �ر��ļ���
End Sub

'OX163���ú���----------------------------------------------------------
Public Function load_normal_file(file_name, unicode_charset) As String
    On Error Resume Next
    
    Dim fileline As String
    
    Set fso = CreateObject("Scripting.FileSystemObject")
    Set file = fso.OpenTextFile(file_name, 1, False, unicode_charset)
    load_normal_file = file.Readall
    file.Close
    Set file = Nothing
    Set fso = Nothing
End Function

Public Function load_script(file_name) As String
    On Error Resume Next
    
    Dim fileline As String
    
    Set fso = CreateObject("Scripting.FileSystemObject")
    Set file = fso.OpenTextFile(file_name, 1, False, 0)
    load_script = file.Readall
    file.Close
    Set fso = Nothing
    
    'Open file_name For Input As #5
    'Do While Not EOF(5)
    'Line Input #5, fileline
    'load_script = load_script + fileline & vbCrLf
    'DoEvents
    'Loop
    'Close #5
    'load_script = Left$(load_script, Len(load_script) - 2)
End Function


Public Function check_include(ByVal url_str As String) As String
    On Error Resume Next
    
    check_include = ""
    If Dir(App.Path & "\include\include.txt") = "" Then Exit Function
    
    Dim include_str, include_str1
    
    include_str = load_script(App.Path & "\include\include.txt")
    If include_str = "" Then Exit Function
    
    include_str = Split(Trim$(include_str), vbCrLf)
    
    For i = 0 To UBound(include_str)
        DoEvents
        If include_str(i) <> "" Then
            include_str1 = Split(include_str(i), "|")
            
            If UBound(include_str1) < 4 Then GoTo next_i
            If Dir(App.Path & "\include\" & include_str1(0)) = "" Then GoTo next_i
            If LCase$(include_str1(1)) <> "vbscript" And LCase$(include_str1(1)) <> "javascript" Then GoTo next_i
            If include_str1(2) = "" Then GoTo next_i
            If LCase$(include_str1(3)) <> "photo" And LCase$(include_str1(3)) <> "album" Then GoTo next_i
            If include_str1(4) = "" Then GoTo next_i
            
            'url_str(�������ַ)
            'include_str1(4)(����?*�ȷ��ŵĹ淶��ַ)
            
            If LCase(url_str) Like LCase(include_str1(4)) Then
                check_include = include_str1(0) & "|" & include_str1(1) & "|" & include_str1(2) & "|" & include_str1(3) & "|" & url_str
                Exit Function
            End If
            
        End If
        
next_i:
        
    Next i
End Function

Public Function fix_pix(ByVal pix_str)
    fix_pix = ""
    pix_str = Split(pix_str, "x")
    For i = 0 To UBound(pix_str)
        DoEvents
        fix_pix = fix_pix & Format$(Int(pix_str(i)), "0000") & "x"
    Next i
    fix_pix = Mid$(fix_pix, 1, Len(fix_pix) - 1)
End Function

Public Function is_fileName(ByVal file_name As String) As Boolean
    is_fileName = True
    If InStr(file_name, Chr(92)) > 0 Then is_fileName = False: Exit Function
    If InStr(file_name, Chr(47)) > 0 Then is_fileName = False: Exit Function
    If InStr(file_name, Chr(34)) > 0 Then is_fileName = False: Exit Function
    If InStr(file_name, Chr(63)) > 0 Then is_fileName = False: Exit Function
    If InStr(file_name, Chr(58)) > 0 Then is_fileName = False: Exit Function
    If InStr(file_name, Chr(42)) > 0 Then is_fileName = False: Exit Function
    If InStr(file_name, Chr(60)) > 0 Then is_fileName = False: Exit Function
    If InStr(file_name, Chr(62)) > 0 Then is_fileName = False: Exit Function
    If InStr(file_name, Chr(124)) > 0 Then is_fileName = False: Exit Function
    
    If Left(file_name, 1) = "." Then is_fileName = False: Exit Function
    If Right(file_name, 1) = "." Then is_fileName = False: Exit Function
End Function



