Attribute VB_Name = "Parsing"
Option Explicit

Public Type ScriptInfo
    'tom.vbs|vbscript|GB2312|album|http://photo.tom.com/pim.php?*
    fileName As String
    Language As String
    Encoding As String
    HandleType As String
    Criteria As String
End Type

Public Type downloadInfo
    'inet|10,13|url|url_Referer|POST method
    isResume As Boolean
    mode As DownloadMode
    excludeChar As String
    downloadURL As String
    refererINFO As String
    POSTmethod As String
End Type

Public Type AlbumInfo
    '0|23|http://comic.92wy.com/go/comicshow.aspx?id=1389&nameid=57|BLAME_��1��|BLAME_��1��
    hasPassword As Boolean
    picCount As String
    URL As String
    AlbumName As String
    Description As String
End Type

Public Type PhotoInfo
    'jpg|http://www.spymac.com/upload/2007/09/28/XmBhIoPMTu|aaa.jpg|aaaadsfsdfsfdsf
    picURL As String
    fileName As String
    Description As String
End Type

Public Enum DownloadMode
    OX_INET
    OX_WEB
End Enum

'-------------------------------------------------------------------------
'���ҳ��url�Ƿ��п��ýű�------------------------------------------------
'-------------------------------------------------------------------------

Public Function check_Include(ByVal url_str As String) As String
    On Error Resume Next
    
    check_Include = ""
    If Dir(App_path & "\include\sys\include.txt") = "" Then Exit Function
    
    Dim include_str, include_str1
    
    include_str = load_Script(App_path & "\include\sys\include.txt")
    If include_str = "" Then Exit Function
    
    include_str = Split(Trim$(include_str), vbCrLf)
    
    Dim i As Long
    For i = 0 To UBound(include_str)
        DoEvents
        If include_str(i) <> "" Then
            include_str1 = Split(include_str(i), "|")
            
            If UBound(include_str1) < 4 Then GoTo next_i
            If Dir(App_path & "\include\sys\" & include_str1(0)) = "" Then GoTo next_i
            If LCase$(include_str1(1)) <> "vbscript" And LCase$(include_str1(1)) <> "javascript" Then GoTo next_i
            If include_str1(2) = "" Then GoTo next_i
            If LCase$(include_str1(3)) <> "photo" And LCase$(include_str1(3)) <> "album" Then GoTo next_i
            If include_str1(4) = "" Then GoTo next_i
            
            'url_str(�������ַ)
            'include_str1(4)(����?*�ȷ��ŵĹ淶��ַ)
            
            If LCase(url_str) Like LCase(include_str1(4)) Then
                check_Include = include_str1(0) & "|" & include_str1(1) & "|" & include_str1(2) & "|" & include_str1(3) & "|" & url_str
                Exit Function
            End If
            
        End If
        
next_i:
        
    Next i
End Function

Public Function ParseInclude(ByVal sourceString As String) As ScriptInfo
    On Error Resume Next
    'include�е�����
    'tom.vbs|vbscript|GB2312|album|http://photo.tom.com/pim.php?*
    '�ж���include֮���͵�list_album_script����list_photo_script�е�����
    'eht.vbs|vbscript|UTF-8|album|http://g.e-hentai.org/g/132226/e6f6d72be1/
    Dim script_ParseStr() As String
    ParseInclude.fileName = ""
    ParseInclude.Language = ""
    ParseInclude.Encoding = ""
    ParseInclude.HandleType = ""
    ParseInclude.Criteria = ""
    script_ParseStr = Split(sourceString, "|")
    If UBound(script_ParseStr) >= 0 Then ParseInclude.fileName = script_ParseStr(0)
    If UBound(script_ParseStr) >= 1 Then ParseInclude.Language = LCase$(script_ParseStr(1))
    If UBound(script_ParseStr) >= 2 Then ParseInclude.Encoding = script_ParseStr(2)
    If UBound(script_ParseStr) >= 3 Then ParseInclude.HandleType = LCase$(script_ParseStr(3))
    If UBound(script_ParseStr) >= 4 Then ParseInclude.Criteria = script_ParseStr(4)
End Function

Public Function ParseDownloadURL(ByVal sourceString As String) As downloadInfo
    On Error Resume Next
    'inet|10,13|url|url_Referer|POST method
    Dim script_ParseStr() As String
    Dim script_ParseStr_counts As Byte
    
    script_ParseStr_counts = 0
    ParseDownloadURL.isResume = False
    ParseDownloadURL.mode = OX_INET
    ParseDownloadURL.excludeChar = ""
    ParseDownloadURL.downloadURL = ""
    ParseDownloadURL.refererINFO = ""
    ParseDownloadURL.POSTmethod = ""
    
    script_ParseStr = Split(sourceString, "|")
    If IsNumeric(script_ParseStr(0)) Then
        '0|inet|10,13|url|url_Referer|POST method
        script_ParseStr_counts = 1
        If Int(script_ParseStr(0)) > 0 Then ParseDownloadURL.isResume = True
    End If
    If UBound(script_ParseStr) < (2 + script_ParseStr_counts) Then Exit Function
    
    If LCase$(script_ParseStr(0 + script_ParseStr_counts)) = "web" Then ParseDownloadURL.mode = OX_WEB
    ParseDownloadURL.excludeChar = script_ParseStr(1 + script_ParseStr_counts)
    ParseDownloadURL.downloadURL = Trim$(script_ParseStr(2 + script_ParseStr_counts))
    If UBound(script_ParseStr) > (2 + script_ParseStr_counts) Then ParseDownloadURL.refererINFO = OX_PrivateChr(script_ParseStr(3 + script_ParseStr_counts))
    If UBound(script_ParseStr) > (3 + script_ParseStr_counts) Then ParseDownloadURL.POSTmethod = OX_PrivateChr(script_ParseStr(4 + script_ParseStr_counts))
End Function

Public Function ParseAlbum(ByVal sourceString As String) As AlbumInfo()
    On Error Resume Next
    '0|23|http://comic.92wy.com/go/comicshow.aspx?id=1389&nameid=57|BLAME_��1��|BLAME_��1��
    Dim ParseAlbumStrSplit, ParseAlbumInfoSplit
    Dim i As Long, j As Long, ParseAlbumInfo() As AlbumInfo
    ParseAlbumStrSplit = Split(sourceString, vbCrLf)
    '�ж�����
    If LBound(ParseAlbumStrSplit) <> 0 Or UBound(ParseAlbumStrSplit) < 0 Then
        ReDim ParseAlbumInfo(0) As AlbumInfo
        ParseAlbum = ParseAlbumInfo
        Exit Function
    End If
    ReDim ParseAlbumInfo(UBound(ParseAlbumStrSplit)) As AlbumInfo
    
    For i = 0 To UBound(ParseAlbumStrSplit)
        DoEvents
        If Form1.form_quit = True Then Exit Function
        ParseAlbumInfoSplit = Split(ParseAlbumStrSplit(i), "|")
        '�жϲ�λ���һ��
        If i < UBound(ParseAlbumStrSplit) Then
            'list_album_name
            ParseAlbumInfo(i).AlbumName = fix_Code(ParseAlbumInfoSplit(3))
            'list_album_password
            ParseAlbumInfo(i).hasPassword = IIf(ParseAlbumInfoSplit(0) <> "0", True, False)
            'list_album_url
            ParseAlbumInfo(i).URL = ParseAlbumInfoSplit(2)
            'list_album_photo_numbers
            If IsNumeric(ParseAlbumInfoSplit(1)) Then
                ParseAlbumInfo(i).picCount = IIf(ParseAlbumInfoSplit(1) > 0, Format$(ParseAlbumInfoSplit(1), "00000") & "��", "")
            Else
                ParseAlbumInfo(i).picCount = ""
            End If
            'list_album_disc
            For j = 4 To UBound(ParseAlbumInfoSplit)
                ParseAlbumInfo(i).Description = ParseAlbumInfo(i).Description & ParseAlbumInfoSplit(j)
            Next j
            ParseAlbumInfo(i).Description = Str_unicode_Ctrl(fix_Code(Trim$(ParseAlbumInfo(i).Description)))
            '���һ��Ϊ��һҳ������Ϣ
        Else
            ParseAlbumInfo(i).URL = Trim$(ParseAlbumStrSplit(i))
        End If
    Next i
    ParseAlbum = ParseAlbumInfo
End Function

Public Function ParsePhoto(ByVal sourceString As String) As PhotoInfo()
    On Error Resume Next
    'jpg|http://www.spymac.com/upload/2007/09/28/XmBhIoPMTu|aaa.jpg|aaaadsfsdfsfdsf
    Dim ParsePhotoStrSplit, ParsePhotoInfoSplit
    Dim i As Long, j As Long, ParsePhotoInfo() As PhotoInfo
    ParsePhotoStrSplit = Split(sourceString, vbCrLf)
    '�ж�����
    If LBound(ParsePhotoStrSplit) <> 0 Or UBound(ParsePhotoStrSplit) < 0 Then
        ReDim ParsePhotoInfo(0) As PhotoInfo
        ParsePhoto = ParsePhotoInfo
        Exit Function
    End If
    ReDim ParsePhotoInfo(UBound(ParsePhotoStrSplit)) As PhotoInfo
    
    For i = 0 To UBound(ParsePhotoStrSplit)
        DoEvents
        If Form1.form_quit = True Then Exit Function
        ParsePhotoInfoSplit = Split(ParsePhotoStrSplit(i), "|")
        '�жϲ�λ���һ��
        If i < UBound(ParsePhotoStrSplit) Then
            'list_picName
            ParsePhotoInfoSplit(2) = Trim$(ParsePhotoInfoSplit(2)) '�ļ�����ȥ����β�ո�
            ParsePhotoInfoSplit(0) = Trim$(ParsePhotoInfoSplit(0)) '�ļ���׺��ȥ����β�ո��ļ���׺��������ļ��������жϺϲ�
            If ParsePhotoInfoSplit(0) <> "" Then
                If Not (LCase(ParsePhotoInfoSplit(2)) Like LCase("*?." & ParsePhotoInfoSplit(0))) Then ParsePhotoInfoSplit(2) = ParsePhotoInfoSplit(2) & "." & ParsePhotoInfoSplit(0)
            ElseIf ParsePhotoInfoSplit(2) = "" Then
                ParsePhotoInfoSplit(2) = Trim$(Mid$(ParsePhotoInfoSplit(1), InStrRev(ParsePhotoInfoSplit(1), "/") + 1)) '��ȡurl�е��ļ���
                If ParsePhotoInfoSplit(2) = "" Then ParsePhotoInfoSplit(2) = "NoName_File"
            End If
            ParsePhotoInfo(i).fileName = reName_Str(fix_Code(ParsePhotoInfoSplit(2)))
            'list_picUrl
            ParsePhotoInfo(i).picURL = ParsePhotoInfoSplit(1)
            'list_picDisc
            For j = 3 To UBound(ParsePhotoInfoSplit)
                ParsePhotoInfo(i).Description = ParsePhotoInfo(i).Description & ParsePhotoInfoSplit(j)
            Next j
            ParsePhotoInfo(i).Description = Str_unicode_Ctrl(fix_Code(Trim$(ParsePhotoInfo(i).Description)))
            '���һ��Ϊ��һҳ������Ϣ
        Else
            ParsePhotoInfo(i).picURL = Trim$(ParsePhotoStrSplit(i))
        End If
    Next i
    ParsePhoto = ParsePhotoInfo
End Function
