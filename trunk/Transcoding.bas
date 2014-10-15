Attribute VB_Name = "Transcoding"
'-------------------------------------------------------------------------
'----------------------------OX163�ַ�����ģ��----------------------------
'-------------------------------------------------------------------------
Option Explicit

'�����ڲ��ַ���---------------script_app.Run����Ҫ�õ���script_app.Eval��Ҫ��������ı�------------------------------------
Public Function OX_CInternal(ByVal sourceString As String, ByVal sourceType As String) As String
    On Error Resume Next
    Select Case sourceType
    Case "vbscript"
        sourceString = Replace$(sourceString, """", """""")             'Chr(34), Chr(34) & Chr(34))
        sourceString = Replace$(sourceString, vbCr, """ & vbCr & """)   'Chr(10), Chr(34) & " & Chr(10) & " & Chr(34))
        sourceString = Replace$(sourceString, vbLf, """ & vbLf & """)   'Chr(13), Chr(34) & " & Chr(13) & " & Chr(34))
    Case Else
        sourceString = Replace$(sourceString, """", "\""")                                  'Chr(34), "\" & Chr(34))
        sourceString = Replace$(sourceString, vbLf, """ + String.fromCharCode(10) + """)    'Chr(10), Chr(34) & "+String.fromCharCode(10)+" & Chr(34))
        sourceString = Replace$(sourceString, vbCr, """ + String.fromCharCode(13) + """)    'Chr(13), Chr(34) & "+String.fromCharCode(13)+" & Chr(34))
    End Select
    OX_CInternal = sourceString
End Function
'2��������ת����Ӧ���ַ����ı�------------------------------------------------------------------------------------------
Public Function Bin2CharsetTypeStr(ByVal binstr, ByVal CharsetType)
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
        .Charset = CharsetType
        .Position = 2
        StringReturn = .ReadText
        .Close
    End With
    Set BytesStream = Nothing
    Bin2CharsetTypeStr = StringReturn
End Function

'����ָ���ؼ��ּ�------------------------------------------------------------------------------------------
Public Function OX_FilterKeywords(ByVal sourceString As String, ByVal keywords As String) As String
    On Error Resume Next
    Dim script_code_replace
    Dim i As Long
    If keywords <> "0" Then
        script_code_replace = Split(keywords, ",")
        For i = 0 To UBound(script_code_replace)
            DoEvents
            If IsNumeric(script_code_replace(i)) Then
                sourceString = Replace$(sourceString, ChrW(Int(script_code_replace(i))), "")
            Else
                sourceString = Replace$(sourceString, script_code_replace(i), "")
            End If
        Next i
    End If
    OX_FilterKeywords = sourceString
End Function
'��ԭOX163�Զ����ַ�----------------------------------------------------------------------------------------
Public Function OX_PrivateChr(ByVal sourceString As String) As String
    sourceString = Replace(sourceString, "&for_ox163_replace_vbcrlf&", vbCrLf)
    sourceString = Replace(sourceString, "&for_ox163_replace_vline&", "|")
    OX_PrivateChr = sourceString
End Function

'��ҳJS������unicodeת��ascii������\u����ͷ�ַ���163������õ�
Public Function unicode2asc(ByVal old_str)
    Dim unicode_tf As Boolean, i As Long, j As Long
    Dim unicode_number As Long
    Dim check_str
    old_str = Replace$(old_str, "\/", "/")
    If InStr(old_str, "\u") < 1 Then unicode2asc = old_str: Exit Function
    check_str = Split(old_str, "\u")
    For i = 0 To UBound(check_str)
        DoEvents
        unicode_tf = False
        If i = 0 And InStr(old_str, "\u") > 1 Then GoTo end_last
        If Len(check_str(i)) > 3 Then
            unicode_tf = True
            For j = 1 To 4
                If InStr("0123456789abcdefABCDEF", Mid$(check_str(i), j, 1)) < 1 Then unicode_tf = False: GoTo end_last
            Next j
            old_str = Left(check_str(i), 4)
            unicode_number = "&H" & old_str
            check_str(i) = ChrW(unicode_number) & Right(check_str(i), Len(check_str(i)) - 4)
        End If
end_last:
        If unicode_tf = True Then
            unicode2asc = unicode2asc & check_str(i)
        ElseIf i = 0 Then
            unicode2asc = check_str(i)
        Else
            unicode2asc = unicode2asc & "\u" & check_str(i)
        End If
    Next i
End Function

'��ҳ�ַ�ת��Ϊ�����ַ�
Public Function fix_Code(ByVal old_str As String) As String
    '&lt;   - <
    old_str = Replace$(old_str, "&lt;", "<")
    '&gt;   - >
    old_str = Replace$(old_str, "&gt;", ">")
    '&quot; - "
    old_str = Replace$(old_str, "&quot;", Chr(34))
    '&#0039;- '
    old_str = Replace$(old_str, "&#0039;", "'")
    '&#039; - '
    old_str = Replace$(old_str, "&#039;", "'")
    '&#39;  - '
    old_str = Replace$(old_str, "&#39;", "'")
    '&amp;  - &
    old_str = Replace$(old_str, "&amp;", "&")
    
    fix_Code = old_str
End Function

'�����ļ�����ȥ�������õ��ַ�
Public Function reName_Str(ByVal old_Name As String) As String
    Dim i As Long
    
    reName_Str = Replace$(old_Name, Chr(92), "_")
    reName_Str = Replace$(reName_Str, Chr(47), "_")
    reName_Str = Replace$(reName_Str, Chr(34), "_")
    reName_Str = Replace$(reName_Str, Chr(58), "_")
    reName_Str = Replace$(reName_Str, Chr(42), "_")
    reName_Str = Replace$(reName_Str, Chr(60), "[")
    reName_Str = Replace$(reName_Str, Chr(62), "]")
    reName_Str = Replace$(reName_Str, Chr(124), "_")
    
    
    '0-Ĭ��,��"&#34;"��ʽ��ʾ�б�,��ԭ�ַ�����
    '1-�滻,�ַ��滻Ϊ"&#34;"��ʽ,����ԭ
    '2-���,�ַ��滻ΪĬ���ַ�"_"
    Select Case sysSet.Unicode_File
    Case 0
        reName_Str = Hex_unicode_str(reName_Str)
    Case 1
        reName_Str = Hex_unicode_str(reName_Str)
    End Select
    
    For i = 1 To Len(reName_Str)
        If Asc(Mid(reName_Str, i, 1)) = 63 Then reName_Str = Replace(reName_Str, Mid(reName_Str, i, 1), "_")
    Next
    
    If Left(reName_Str, 1) = "." Then reName_Str = "_" & Mid$(reName_Str, 2)
    If Right(reName_Str, 1) = "." Then reName_Str = Mid$(reName_Str, 1, Len(reName_Str) - 1) & "_"
    
End Function
'Unicode�ַ���������
Public Function Str_unicode_Ctrl(ByVal old_String As String) As String
    '0-�滻,�ַ��滻Ϊ��ҳ��"&#34;"��ʽ
    '1-����,�����޷�ʶ��,��ʾΪ"?"
    '2-���,�ַ��滻ΪĬ���ַ�"_"
    Dim i As Long
    
    Select Case sysSet.Unicode_Str
    Case 0
        old_String = Hex_unicode_str(old_String)
    Case 2
        For i = 1 To Len(old_String)
            If Asc(Mid(old_String, i, 1)) = 63 Then old_String = Replace(old_String, Mid(old_String, i, 1), "_")
        Next
    End Select
    Str_unicode_Ctrl = old_String
End Function


'����ANSI�ַ�ת��Ϊ16���ƴ���"&HFF75",��ת��Ϊ10������ҳ����"&#65397;"(���ַ���ҳ16���ƴ���Ϊ"&#xFF75;")
Public Function Hex_unicode_str(ByVal old_String As String) As String
    Dim i As Long, UnAnsi_Str As String, Hex_UnAnsi_Str As String
    For i = 1 To Len(old_String)
        If Asc(Mid(old_String, i, 1)) = 63 Then UnAnsi_Str = UnAnsi_Str & Mid(old_String, i, 1)
    Next
    
    For i = 1 To Len(UnAnsi_Str)
        Hex_UnAnsi_Str = Mid(UnAnsi_Str, i, 1)
        '��Hex������AscW(����ֵ����������Integerȡֵ��Χ��-32768��32767��65535��ֵ)�ķ���ֵת����ʮ�����Ƶ��ַ���������VB��ʮ������ǰ׺&H�������CLng������������ת����Long���������ܵõ�����32767��Unicode����ֵ
        Hex_UnAnsi_Str = "&H" & Hex(AscW(Hex_UnAnsi_Str))
        old_String = Replace(old_String, Mid(UnAnsi_Str, i, 1), "&#" & Int(Hex_UnAnsi_Str) & ";")
    Next
    Hex_unicode_str = old_String
End Function

'��10������ҳ����"&#65397;"��16������ҳ����"&#xFF75;", ת��Ϊunicode�ַ�
Public Function fix_Unicode_FileName(ByVal sLongFileName As String) As String
    On Error Resume Next
    Dim i As Long, fixed_Unicode_tf As Boolean, split_str
    Dim fix_Unicode As String
    
    fix_Unicode_FileName = sLongFileName
    
    split_str = Split(sLongFileName, "&#")
    If UBound(split_str) >= 1 Then
        
        For i = 1 To UBound(split_str)
            
            fixed_Unicode_tf = False
            If InStr(split_str(i), ";") > 1 Then
                
                fix_Unicode = Mid(split_str(i), 1, InStr(split_str(i), ";") - 1)
                split_str(i) = Mid(split_str(i), InStr(split_str(i), ";") + 1)
                
                '���16������ҳ����"&#xFF75;"
                If Left(LCase(fix_Unicode), 1) = "x" And Len(fix_Unicode) > 1 And Len(fix_Unicode) < 10 Then
                    If is_Hex_code(Mid(fix_Unicode, 2)) And (LCase(fix_Unicode) <> "x3f" And LCase(fix_Unicode) <> "x5c" And LCase(fix_Unicode) <> "x2f" And LCase(fix_Unicode) <> "x22" And LCase(fix_Unicode) <> "x3a" And LCase(fix_Unicode) <> "x2a" And LCase(fix_Unicode) <> "x3c" And LCase(fix_Unicode) <> "x3e" And LCase(fix_Unicode) <> "x7c") Then
                        fix_Unicode = Mid(fix_Unicode, 2)
                        fix_Unicode = ChrW(Int("&H" & fix_Unicode))
                        fixed_Unicode_tf = True
                    End If
                    '���10������ҳ����"&#65397;"
                ElseIf IsNumeric(fix_Unicode) = True And Len(fix_Unicode) > 0 And Len(fix_Unicode) < 10 Then
                    If Int(fix_Unicode) <> 0 And Int(fix_Unicode) <> 63 And Int(fix_Unicode) <> 92 And Int(fix_Unicode) <> 47 And Int(fix_Unicode) <> 34 And Int(fix_Unicode) <> 58 And Int(fix_Unicode) <> 42 And Int(fix_Unicode) <> 60 And Int(fix_Unicode) <> 62 And Int(fix_Unicode) <> 124 Then
                        fix_Unicode = ChrW(Int(fix_Unicode))
                        fixed_Unicode_tf = True
                    End If
                End If
                
                If fixed_Unicode_tf = False Then
                    split_str(i) = fix_Unicode & ";" & split_str(i)
                Else
                    split_str(i) = fix_Unicode & split_str(i)
                End If
                
            End If
            If fixed_Unicode_tf = False Then split_str(i) = "&#" & split_str(i)
        Next
        fix_Unicode_FileName = Join(split_str, "")
    End If
End Function

Private Function is_Hex_code(ByVal Hex_code As String) As Boolean
    Dim i
    is_Hex_code = True
    If Len(Hex_code) > 0 And Len(Hex_code) < 9 Then
        For i = 1 To Len(Hex_code)
            DoEvents
            If InStr("ABCDEFabcdef0123456789", Mid$(Hex_code, i, 1)) < 1 Then is_Hex_code = False: Exit Function
        Next i
    Else
        is_Hex_code = False
    End If
End Function

'-------------------------------------------------------------------------
'��ʽ��url���ո������ַ��ȸ�ʽ��Ϊ%+���ָ�ʽ��----------------------------
'-------------------------------------------------------------------------
Public Function URLEncode(ByVal vstrIn As String) As String
    On Error Resume Next
    Dim strReturn As String, ThisChr As String, innerCode, Hight8, Low8
    strReturn = ""
    vstrIn = Replace(vstrIn, "%", "%25")
    Dim i
    For i = 1 To Len(vstrIn)
        ThisChr = Mid(vstrIn, i, 1)
        If Abs(Asc(ThisChr)) < &HFF Then
            strReturn = strReturn & ThisChr
        Else
            innerCode = Asc(ThisChr)
            If innerCode < 0 Then
                innerCode = innerCode + &H10000
            End If
            Hight8 = (innerCode And &HFF00) \ &HFF
            Low8 = innerCode And &HFF
            strReturn = strReturn & "%" & Hex(Hight8) & "%" & Hex(Low8)
        End If
    Next
    strReturn = Replace(strReturn, "!", "%21")
    strReturn = Replace(strReturn, Chr(34), "%22")
    strReturn = Replace(strReturn, "#", "%20")
    strReturn = Replace(strReturn, "$", "%24")
    strReturn = Replace(strReturn, "&", "%26")
    strReturn = Replace(strReturn, "'", "%27")
    strReturn = Replace(strReturn, "(", "%28")
    strReturn = Replace(strReturn, ")", "%29")
    strReturn = Replace(strReturn, "*", "%2A")
    strReturn = Replace(strReturn, "+", "%2B")
    strReturn = Replace(strReturn, ",", "%2C")
    strReturn = Replace(strReturn, ".", "%2E")
    strReturn = Replace(strReturn, "/", "%2F")
    strReturn = Replace(strReturn, ":", "%3A")
    strReturn = Replace(strReturn, ";", "%3B")
    strReturn = Replace(strReturn, "<", "%3C")
    strReturn = Replace(strReturn, "=", "%3D")
    strReturn = Replace(strReturn, ">", "%3E")
    strReturn = Replace(strReturn, "?", "%3F")
    strReturn = Replace(strReturn, "@", "%40")
    strReturn = Replace(strReturn, "[", "%5B")
    strReturn = Replace(strReturn, "\", "%5C")
    strReturn = Replace(strReturn, "]", "%5D")
    strReturn = Replace(strReturn, "^", "%5E")
    strReturn = Replace(strReturn, "`", "%60")
    strReturn = Replace(strReturn, "{", "%7B")
    strReturn = Replace(strReturn, "|", "%7C")
    strReturn = Replace(strReturn, "}", "%7D")
    strReturn = Replace(strReturn, "~", "%7E")
    strReturn = Replace(strReturn, Chr(32), "%20")
    URLEncode = strReturn
End Function

'-------------------------------------------------------------------------
'��δʹ��-----------------------------------------------------------------
'-------------------------------------------------------------------------
'Public Function URLDecode(strURL As String) As String
'    Dim strChar As String
'    Dim strText As String
'    Dim strTemp As String
'    Dim strRet As String
'    Dim LngNum As Long
'    Dim I As Integer
'    For I = 1 To Len(strURL)
'        strChar = Mid(strURL, I, 1)
'        Select Case strChar
'          Case "+"
'            strText = strText & " "
'          Case "%"
'            strTemp = Mid(strURL, I + 1, 2) '��ʱȡ2λ
'            LngNum = Val("&H" & strTemp)
'            '>127��Ϊ����
'            If LngNum < 128 Then
'                strRet = Chr(LngNum)
'                I = I + 2
'            Else
'                strTemp = strTemp & Mid(strURL, I + 4, 2)
'                strRet = Chr(Val("&H" & strTemp))
'                I = I + 5
'            End If
'            strText = strText & strRet
'          Case Else
'            strText = strText & strChar
'        End Select
'    Next
'    URLDecode = strText
'End Function

'Public Function URLDecode(strURL)
'On Error Resume Next
'    Dim i
'
'    If InStr(strURL, "%") = 0 Then
'        URLDecode = strURL
'        Exit Function
'    End If
'
'    For i = 1 To Len(strURL)
'        If Mid(strURL, i, 1) = "%" Then
'            If Eval("&H" & Mid(strURL, i + 1, 2)) > 127 Then
'                URLDecode = URLDecode & Chr(Eval("&H" & Mid(strURL, i + 1, 2) & Mid(strURL, i + 4, 2)))
'                i = i + 5
'            Else
'                URLDecode = URLDecode & Chr(Eval("&H" & Mid(strURL, i + 1, 2)))
'                i = i + 2
'            End If
'        Else
'            URLDecode = URLDecode & Mid(strURL, i, 1)
'        End If
'    Next
'End Function


'-------------------------------------------------------------------------
'163��᣺ת�������ַ�Ϊ��UTF-8����ʽ��Ϊ%+���ָ�ʽ-----------------------
'-------------------------------------------------------------------------
Public Function UTF8EncodeURI(ByVal szInput As String) As String
    On Error Resume Next
    Dim wch, uch, szRet
    Dim x
    Dim nAsc, nAsc2, nAsc3
    
    If szInput = "" Then
        UTF8EncodeURI = szInput
        Exit Function
    End If
    
    For x = 1 To Len(szInput)
        wch = Mid(szInput, x, 1)
        nAsc = AscW(wch)
        
        If nAsc < 0 Then nAsc = nAsc + 65536 'AscW�ķ���ֵ����������Integer��Integer��ȡֵ��Χ��-32768��32767������ 32767���������������ظ���
        
        If (nAsc And &HFF80) = 0 Then
            szRet = szRet & wch
        Else
            If (nAsc And &HF000) = 0 Then
                uch = "%" & Hex(((nAsc \ 2 ^ 6)) Or &HC0) & Hex(nAsc And &H3F Or &H80)
                szRet = szRet & uch
            Else
                uch = "%" & Hex((nAsc \ 2 ^ 12) Or &HE0) & "%" & _
                Hex((nAsc \ 2 ^ 6) And &H3F Or &H80) & "%" & _
                Hex(nAsc And &H3F Or &H80)
                szRet = szRet & uch
            End If
        End If
    Next
    
    UTF8EncodeURI = szRet
End Function
Function UTF8DecodeURI(ByVal strIn)
    UTF8DecodeURI = ""
    Dim sl: sl = 1
    Dim tl: tl = 1
    Dim key: key = "%"
    Dim kl: kl = Len(key)
    sl = InStr(sl, strIn, key)
    Do While sl > 0
        If (tl = 1 And sl <> 1) Or tl < sl Then
            UTF8DecodeURI = UTF8DecodeURI & Mid(strIn, tl, sl - tl)
        End If
        Dim hh, hi, hl
        Dim a
        Select Case UCase(Mid(strIn, sl + kl, 1))
        Case "U": 'Unicode URLEncode
            a = Mid(strIn, sl + kl + 1, 4)
            UTF8DecodeURI = UTF8DecodeURI & ChrW("&H" & a)
            sl = sl + 6
        Case "E": 'UTF-8 URLEncode
            hh = Mid(strIn, sl + kl, 2)
            a = Int("&H" & hh) 'ascii��
            If Abs(a) < 128 Then
                sl = sl + 3
                UTF8DecodeURI = UTF8DecodeURI & Chr(a)
            Else
                hi = Mid(strIn, sl + 3 + kl, 2)
                hl = Mid(strIn, sl + 6 + kl, 2)
                a = ("&H" & hh And &HF) * 2 ^ 12 Or ("&H" & hi And &H3F) * 2 ^ 6 Or ("&H" & hl And &H3F)
                If a < 0 Then a = a + 65536
                UTF8DecodeURI = UTF8DecodeURI & ChrW(a)
                sl = sl + 9
            End If
        Case Else: 'Asc URLEncode
            hh = Mid(strIn, sl + kl, 2) '��λ
            a = Int("&H" & hh) 'ascii��
            If Abs(a) < 128 Then
                sl = sl + 3
            Else
                hi = Mid(strIn, sl + 3 + kl, 2) '��λ
                a = Int("&H" & hh & hi) '��ascii��
                sl = sl + 6
            End If
            UTF8DecodeURI = UTF8DecodeURI & Chr(a)
        End Select
        tl = sl
        sl = InStr(sl, strIn, key)
    Loop
    UTF8DecodeURI = UTF8DecodeURI & Mid(strIn, tl)
End Function

