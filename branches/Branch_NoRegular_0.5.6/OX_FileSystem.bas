Attribute VB_Name = "OX_FileSystem"
'-------------------------------------------------------------------------
'OX163�ļ��С��ļ����������----------------------------------------------
'-------------------------------------------------------------------------

'-------------------------------------------------------------------------
'�����ļ�������Unicode�ַ���ɣ�------------------------------------------
'-------------------------------------------------------------------------
Public Function OX_GreatFile(ByVal OX_GreatFileName As String) As Boolean
On Error GoTo OX_GreatFileErr
    Dim ADO_Stream As Object
    Set ADO_Stream = CreateObject("ADODB.Stream")
    With ADO_Stream
        .Type = 1
        .Open
        .SaveToFile OX_GreatFileName, 2
        .Close
    End With
    Set ADO_Stream = Nothing
    OX_GreatFile = True
    Exit Function
    
OX_GreatFileErr:
    Err.Clear
    OX_GreatFile = False
End Function

'-------------------------------------------------------------------------
'�ж��ļ��Ƿ����---------------------------------------------------------
'-------------------------------------------------------------------------
Public Function OX_Dirfile(ByVal OX_FileName As String) As Boolean
On Error GoTo OX_DirfileErr
    Dim fso As Object
    Set fso = CreateObject("Scripting.FileSystemObject")
    OX_Dirfile = fso.FileExists(OX_FileName)
    Set fso = Nothing
    Exit Function
    
OX_DirfileErr:
    Err.Clear
    OX_Dirfile = False
End Function

'-------------------------------------------------------------------------
'ɾ���ļ�-----------------------------------------------------------------
'-------------------------------------------------------------------------
Public Function OX_Delfile(ByVal OX_FileName As String) As Boolean
On Error GoTo OX_DelfileErr
OX_Delfile = False
    Dim fso As Object
    Set fso = CreateObject("Scripting.FileSystemObject")
    fso.DeleteFile OX_FileName, True
    Set fso = Nothing
    OX_Delfile = Not OX_Dirfile(OX_FileName)
    Exit Function
    
OX_DelfileErr:
    Err.Clear
    OX_Delfile = False
End Function

'-------------------------------------------------------------------------
'�ж��ļ����Ƿ����-------------------------------------------------------
'-------------------------------------------------------------------------
Public Function OX_DirFolder(ByVal OX_FolderName As String) As Boolean
On Error GoTo OX_DirFolderErr
    Dim fso As Object
    Set fso = CreateObject("Scripting.FileSystemObject")
    OX_DirFolder = fso.FolderExists(OX_FolderName)
    Set fso = Nothing
    Exit Function
    
OX_DirFolderErr:
    Err.Clear
    OX_DirFolder = False
End Function

'-------------------------------------------------------------------------
'�����ļ���---------------------------------------------------------------
'-------------------------------------------------------------------------
Public Function OX_CreateFolder(ByVal OX_FolderName As String) As Boolean
On Error GoTo OX_CreateFolderErr

    Dim fso As Object
    Set fso = CreateObject("Scripting.FileSystemObject")
    OX_CreateFolder = fso.CreateFolder(OX_FolderName)
    Set fso = Nothing
    Exit Function

OX_CreateFolderErr:
    Err.Clear
    OX_CreateFolder = False
End Function
'-------------------------------------------------------------------------
'����url�ļ�--------------------------------------------------------------
'-------------------------------------------------------------------------
Public Sub OX_CreateUrlIniFile(ByVal OX_UrlIniFileName As String)
    If Dir(App_path & "\url\" & OX_UrlIniFileName) = "" Then
        If Dir(App_path & "\url", vbDirectory) = "" Then MkDir App_path & "\url"
        WriteUnicodeIni "maincenter", "url", OX_UrlIniFileName, App_path & "\url\" & OX_UrlIniFileName
    End If
End Sub






















