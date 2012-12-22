'2012-12-22 visceroid & hein@shanghaijing.net
Dim started, multi_page, brief_mode, brief_mode_rf, retries_count, cache_index, root_str, next_page_str, parent_next_page_str, matches_cache, member_type, php_name
started = False
multi_page = True
retries_count = 0
cache_index = 0
root_str = "http://www.pixiv.net"

Function return_download_url(ByVal url_str)
On Error Resume Next
	member_type=0
	return_download_url = ""
	Dim sub_url_str, regex, matches, page_number, page_url
	Set regex = New RegExp
	regex.Global = True
	page_number=1
	brief_mode_rf=""
	If Right(url_str,Len("&brief_mode=t"))="&brief_mode=t" Then
		brief_mode_rf="&brief_mode=t"
	ElseIf Right(url_str,Len("&brief_mode=f"))="&brief_mode=f" Then
		brief_mode_rf="&brief_mode=f"
	End If		
	
	regex.Pattern = root_str & "/(\w+)\.php(?:\?(?:(?:((?:id|illust_id)=\d+)|((?:tag|word)=(?:[%\w\-]+\+?)+)|(type=(?:illust|user|reg_user))|(mode=(?:medium|all)|rest=(?:show|hide)|s_mode=(?:s_tc|s_tag))|(p=\d+)|[^&]+)(?:&|$))*)?"
	Set matches = regex.Execute(url_str)
	For Each match In matches
		Select Case LCase(match.SubMatches(0))
			Case "member", "member_illust"
				member_type=1
				php_name="member_illust.php"
				sub_url_str = "/member_illust.php?" & match.SubMatches(1) & "&" & match.SubMatches(2) & "&" & match.SubMatches(4)
				multi_page = (match.SubMatches(4) = "")
			Case "tags"
				php_name="tags.php"
				sub_url_str = "/tags.php?" & match.SubMatches(2)
			Case "search"
				php_name="search.php"
				sub_url_str = "/search.php?" & match.SubMatches(2) & "&" & match.SubMatches(4)
			Case "bookmark"
				php_name="bookmark.php"
				sub_url_str = "/bookmark.php?" & match.SubMatches(1) & "&" & match.SubMatches(3) & "&" & match.SubMatches(4)
				multi_page = (InStr(match.SubMatches(3), "user") = 0)
			Case "response"
				php_name="response.php"
				sub_url_str = "/response.php?" & match.SubMatches(1) & "&" & match.SubMatches(4)
			Case "new_illust", "index"
				php_name="new_illust.php"
				sub_url_str = "/new_illust.php"
			Case "bookmark_new_illust", "mypage"
				php_name="bookmark_new_illust.php"
				sub_url_str = "/bookmark_new_illust.php"
			Case "bookmark_new_illust_r18"
				php_name="bookmark_new_illust_r18.php"
				sub_url_str = "/bookmark_new_illust_r18.php"
			Case Else
				Exit Function
		End Select
		If match.SubMatches(5) <> "" Then
			If MsgBox("�Ƿ�ӵ�1ҳ��ʼ������", vbYesNo, "����") = vbno Then
				sub_url_str = sub_url_str & "&" & match.SubMatches(5)
			End If
		End If
		regex.Pattern = "(?:(?:\?|&)+(?=$)|(\?|&)&+)"
		next_page_str = "1|inet|10,13|" & root_str & regex.Replace(sub_url_str, "$1")
		
		If brief_mode_rf="&brief_mode=t" Then
			brief_mode=-1
		ElseIf brief_mode_rf="&brief_mode=f" Then
			brief_mode=0
		Else
			brief_mode = (MsgBox("�Ƿ�������������ü��Է�����ʽ����", vbYesNo, "����") = vbYes)
		End If
		Exit For
	Next
	
	return_download_url = "inet|10,13|" & root_str & "|" & root_str & vbcrlf & "User-Agent: Mozilla/4.0 (compatible; MSIE 5.00; Windows 98)"
End Function

'---------------------------------------------------------------------------------------------
Function return_albums_list(ByVal html_str, ByVal url_str)
On Error Resume Next
	return_albums_list = ""
	Dim name_filter_str, link_str, rename_str, description_str, regex, matches
	name_filter_str = ""
	Set regex = New RegExp
	regex.Global = True
	
	If started Then
		'<li><input name="id[]" value="1593522" type="checkbox" /><div class="usericon"><a href="member.php?id=1593522"><img src="http://img46.pixiv.net/profile/kasetsu_03/mobile/3399441_80.jpg" alt="ϼѩ"/></a></div><div class="userdata"><a href="member.php?id=1593522">ϼѩ</a>�Ϥ���ޤ��ơ��������ġ����i�ߤޤ���<br><span>&nbsp;</span></div></li>
		regex.Pattern = "<div[^>]*class=""userdata""[^>]*>\s*<a[^>]*href=""member\.php\?id=(\d+)[^""]*""[^>]*>\s*([^<" & name_filter_str & "]+)[^<]*</a>([\s\S^]*?)<br>"
		Set matches = regex.Execute(html_str)
		If matches.Count = 0 Then
			process_retry
		Else
			retries_count = 0
			For Each match In matches
				If brief_mode Then
					link_str = root_str & "/member_illust.php?id=" & match.SubMatches(0) & "&brief_mode=t"
				Else 
					link_str = root_str & "/member_illust.php?id=" & match.SubMatches(0) & "&brief_mode=f"
				End If
				rename_str = rename_utf8(match.SubMatches(1))
				description_str = match.SubMatches(2)
				return_albums_list = return_albums_list & "0||" & link_str & "|[" & match.SubMatches(0) & "]" & rename_str & "|" & description_str & vbCrLf
			Next
			next_page_str = get_next_page(html_str)
		End If
	Else
		check_login html_str
	End If
	
	return_albums_list = return_albums_list & next_page_str
End Function

'---------------------------------------------------------------------------------------------
Function return_download_list(ByVal html_str, ByVal url_str)
On Error Resume Next
	return_download_list = ""
	Dim page_count, regex, matches
	Set regex = new RegExp
	regex.Global = True
	
	If started Then
		'�������ҳshowcase����
		If InStr(LCase(html_str), "<section class=""showcase"">")>0 Then
			Dim html_str_temp
			html_str_temp=mid(html_str,1,InStr(LCase(html_str), "<section class=""showcase"">")-1)
			html_str=mid(html_str,InStr(LCase(html_str), "<section class=""showcase"">")+len("<section class=""showcase"">"))
			html_str=html_str_temp & mid(html_str,InStr(LCase(html_str), "</section>")+len("</section>"))
		End If
		'������ѻ�Ա�����ʽ
		If InStr(LCase(html_str), "data-src=")>1 Then
			html_str=format_transparent_html(html_str)
		End If
		'��ʽ���ǻ�ʦҳ���ʽΪ��ʦҳ���ʽ
		If member_type<>1 and InStr(LCase(html_str), "<li class=""image"">")>1 Then
			'<li class="image"><a href="/member_illust.php?mode=medium&amp;illust_id=19067842"><p><img src="http://img01.pixiv.net/img/akuneko/19067842_s.png"></p><h1>���ԥ������򡿉�Ҋ���L���Фǡ��u�L��Ҋ�����</h1></a>
			html_str=format_new_html(html_str)
		End If
		html_str=replace(html_str,"a href=""/member_illust.php","a href=""member_illust.php")
		'2012-12-12 new'<li><a href="/member_illust.php?mode=medium&amp;illust_id=30337755"><img src="http://i1.pixiv.net/img07/img/itou/30337755_s.jpg">�¹�</a></li>
		'old'<a href="member_illust.php?mode=medium&illust_id=17872081"><img src="http://img21.pixiv.net/img/youri19/17872081_s.png" alt="Ȯ��/��" title="Ȯ��/��" />Ȯ��</a></li>
		regex.Pattern = "<a[^>]*href=""(member_illust\.php\?mode=(\w+)&(?:amp;)?illust_id=(\d+))[^""]*""[^>]*>\s*<img(?:\s*(?:src=""([^""]+)\3_(?:s|m)\.(\w+)[^""]*""|alt=""([^""]+)""|\w+=""[^""]*""|))+\s*/?>((?:(?!</a>).)*)</a>"
		Set matches = regex.Execute(html_str)
		
		If matches.Count = 0 Then
			process_retry
		Else
			retries_count = 0
			For Each match In matches
				Select Case match.SubMatches(1)
					Case "medium"
						If InStr(next_page_str, match.SubMatches(2)) = 0 Then
							If brief_mode Then
								add_download_list_entry match, return_download_list, 0
							Else
								Set matches_cache = matches
								Exit For
							End If
						End If
					Case "big"
						If InStr(next_page_str, match.SubMatches(2)) > 0 Then
							add_download_list_entry match, return_download_list, 0
							Exit For
						End If
					Case "manga"
						If InStr(next_page_str, match.SubMatches(2)) > 0 Then
							'regex.Pattern = "<div[^>]*class=""works_data""[^>]*>\s*<p[^>]*>(?:(?!</p>).)*(?:����|����|Manga) (\d+)P(?:(?!</p>).)*</p>"
							regex.Pattern = "<li>(?:����|����|Manga) (\d+)P</li>"
							page_count = regex.Execute(html_str).Item(0).SubMatches(0)
							For page_index = 0 To page_count - 1
								add_download_list_entry match, return_download_list, page_index
							Next
							Exit For
						End If
					Case Else
						Exit Function
				End Select
			Next
			
			next_page_str = "0"
			If multi_page Then
				If cache_index = 0 Then
					next_page_str = get_next_page(html_str)
					parent_next_page_str = next_page_str
				End If
				If Not brief_mode Then
					If cache_index < matches_cache.Count Then
						next_page_str = "1|inet|10,13|" & root_str & "/" & matches_cache.Item(cache_index).SubMatches(0)
						next_page_str = replace(next_page_str,"&amp;","&")
						cache_index = cache_index + 1
					Else
						next_page_str = parent_next_page_str
						cache_index = 0
					End If
					If next_page_str = "0" and brief_mode_rf="" Then
						MsgBox "��������ɡ�", vbOKOnly, "����"
					End If
				End If
			End If
		End If
	Else
		check_login html_str
	End If
	return_download_list = return_download_list & next_page_str
End Function

Function process_retry()
	retries_count = retries_count + 1
	If retries_count > 3 Then
		next_page_str = "0"
	End If
End Function

Function add_download_list_entry(ByRef match, ByRef download_list, ByVal page_index)
	Dim format_str, link_str, rename_str, description_str, manga_big_str
	format_str = match.SubMatches(4)
	link_str = match.SubMatches(3) & match.SubMatches(2)
	If match.SubMatches(6) <> "" Then
		rename_str = "(pid-" & match.SubMatches(2) & ")" & rename_utf8(match.SubMatches(6))
	Else
		rename_str = "(pid-" & match.SubMatches(2) & ")" & rename_utf8(match.SubMatches(5))
	End If
	description_str = rename_utf8(match.SubMatches(5))
	
	Select Case match.SubMatches(1)
		Case "medium", "big"
			link_str = link_str & "." & format_str
		Case "manga" '11319936_big_p0.jpg 06/16/2010 20:43--------------11319930_p0.jpg 06/16/2010 20:43
			manga_big_str="_p"
			If match.SubMatches(2)<11319931 Then
				manga_big_str="_p"
			Else
				manga_big_str="_big_p"
			End If
			link_str = link_str & manga_big_str & page_index & "." & format_str
			rename_str = rename_str & manga_big_str & page_index
			description_str = description_str & " - " & (page_index + 1)
		Case Else
			Exit Function
	End Select
	download_list = download_list & format_str & "|" & link_str & "?" & (CDbl(Now()) * 10000000000) & "|" & rename_str & "|" & description_str & vbCrLf
End Function
'---------------------------------------------------------------------------------------------
Function check_login(ByVal html_str)
	Dim regex, matches
	Set regex = new RegExp
	regex.Global = True
	
	regex.Pattern = "<input[^>]*value=""login""[^>]*>"
	If regex.Execute(html_str).Count > 0 Then
		MsgBox "����û�е�½PIXIV��" & vbCrLf & "��ʹ�������������½��ʹ��IE���������½" & vbCrLf & "����ѡ���λؤ����ԄӵĤ˥����󡱱���cookies��", vbOKOnly + vbExclamation, "����"
		next_page_str = "0"
	Else
		started = True
	End If
End Function
'---------------------------------------------------------------------------------------------
Function get_next_page(ByVal html_str)
	get_next_page = "0"
	Dim regex, matches
	Set regex = New RegExp
	regex.Global = True
	regex.Pattern = "<a[^>]*href=""([^>\s]+)""[^>]*class=""[^""]*button[^""]*""[^>]*rel=""next""[^>]*>.*?</a>\s*</li>"
								 '<li><a href="member_illust.php?id=517481&p=2" class="button" rel="next">��һ�� ?</a></li>
								 '<li class="next"><a href="?word=sega&amp;order=date_d&amp;p=2" class="ui-button-light" rel="next" title="��һ��">&gt;</a></li>
	Set matches = regex.Execute(html_str)
	'InputBox next_page_str,next_page_str,next_page_str
	For Each match In matches
		get_next_page = replace(match.SubMatches(0),"&amp;","&")
		If Left(get_next_page,1)="?" Then
			get_next_page=php_name & get_next_page
		End If
		get_next_page = "1|inet|10,13|" & root_str & "/" & get_next_page
		Exit For
	Next
End Function
'---------------------------------------------------------------------------------------------
Function format_new_html(ByVal html_str)
    format_new_html = html_str
    '<li class="image"><a href="/member_illust.php?mode=medium&amp;illust_id=19067842"><p><img src="http://img01.pixiv.net/img/akuneko/19067842_s.png"></p><h1>��Ҋ���L���Ф�</h1></a><p class="user"><a href="/member.php?id=666">��֮</a></p></li>
    'ת��Ϊ
    '<li id="li_17872081"><a href="member_illust.php?mode=medium&illust_id=17872081"><img src="http://img21.pixiv.net/img/youri19/17872081_s.png" alt="Ȯ��/��" title="Ȯ��/��" />Ȯ��</a></li>
    Dim split_str, matches(5),temp(2)
    temp(0) = Mid(html_str, 1, InStr(LCase(html_str), "<li class=""image"">") - 1)
    html_str = Mid(html_str, InStr(LCase(html_str), "<li class=""image"">") + Len("<li class=""image"">"))
    
    split_str = Split(html_str, "<li class=""image"">")
    For i = 0 To UBound(split_str)
        matches(0) = Mid(split_str(i), InStr(LCase(split_str(i)), "illust_id=") + Len("illust_id="))
        matches(0) = Mid(matches(0), 1, InStr(matches(0), """") - 1)
        matches(1) = Mid(split_str(i), InStr(LCase(split_str(i)), "<a href=""/") + Len("<a href=""/"))
        matches(1) = Mid(matches(1), 1, InStr(matches(1), """") - 1)
        matches(1) = replace(matches(1),"&amp;" , "&")
        If Left(matches(1),1)="/" Then matches(1)=Mid(matches(1),2)
        matches(2) = Mid(split_str(i), InStr(LCase(split_str(i)), "<img src=""") + Len("<img src="""))
        matches(2) = Mid(matches(2), 1, InStr(matches(2), """") - 1)
        matches(3) = Mid(split_str(i), InStr(LCase(split_str(i)), "<h2>") + Len("<h2>"))
        matches(3) = Mid(matches(3), 1, InStr(LCase(matches(3)), "</h2>") - 1)
        If i=ubound(split_str) Then
			    temp(1) = Mid(split_str(i), InStr(LCase(split_str(i)), "</ul>"))
        End If 
        '<p class="user">
        matches(4) = Mid(split_str(i),InStr(LCase(split_str(i)), "<p class=""user"">") + len("<p class=""user"">"))
        matches(4) = Mid(matches(4), 1, InStr(LCase(matches(4)), "</a>") - 1)
        matches(4) = Mid(matches(4), InStrRev(LCase(matches(4)), """>") + 2)

        split_str(i) = "<li id=""li_" & matches(0) & """><a href=""" & matches(1) & """><img src=""" & matches(2) & """ alt=""" & matches(3) & "/" & matches(4) & """ title=""" & matches(3) & "/" & matches(4) & """ />" & matches(3) & "</a></li>"
    Next
    format_new_html =temp(0) & "<ul>" & Join(split_str, "") & temp(1)
End Function

Function format_transparent_html(ByVal html_str)
    format_transparent_html = html_str
		'new
		'<li><a href="/member_illust.php?mode=medium&amp;illust_id=31510157">
		'<div class="layout-thumbnail"><img src="http://source.pixiv.net/source/images/common/transparent.gif" alt="" class="ui-scroll-view" data-filter="thumbnail-filter lazy-image" data-src="http://i1.pixiv.net/img03/img/fuzichoco/31510157_s.jpg" data-tags="���ꥸ�ʥ� Ů���� �� ����� �ɥ饴�� ����å��ƊX ��Ů �ϥ����� �դĤ�����"></div>ˮ������Ů</a></li>
		'ת��Ϊold
		'<img src="http://img21.pixiv.net/img/youri19/17872081_s.png" alt="Ȯ��/��" title="Ȯ��/��" />Ȯ��</a></li>
    Dim split_str, matches(4),temp(2)
    temp(0) = Mid(html_str,1,InStr(LCase(html_str), "<div class=""layout-thumbnail"">")-1)
    html_str = Mid(html_str,InStr(LCase(html_str), "<div class=""layout-thumbnail"">")+len("<div class=""layout-thumbnail"">"))
    temp(1) = Mid(html_str,InStr(LCase(html_str), "<div class=""clear""></div>"))    
    html_str = Mid(html_str,1,InStr(LCase(html_str), "<div class=""clear""></div>")-1)
    split_str = Split(html_str, "<div class=""layout-thumbnail"">")
    For i = 0 To UBound(split_str)
    		'alt
        matches(0) = Mid(split_str(i), InStr(LCase(split_str(i)), """ data-tags=""") + Len(""" data-tags="""))
        matches(0) = Mid(matches(0), 1, InStr(matches(0), """") - 1)
        'title=
        matches(1) = matches(0)
        'data-src=
        matches(2) = Mid(split_str(i), InStr(LCase(split_str(i)), """ data-src=""") + Len(""" data-src="""))
        matches(2) = Mid(matches(2), 1, InStr(matches(2), """") - 1)
        '/>Ȯ��</a></li>
        matches(3) = Mid(split_str(i), InStr(LCase(split_str(i)), "</div>")+6)
        split_str(i)="<img src=""" & matches(2) & """ alt=""" & matches(0) & """ title=""" & matches(1) & """ />" & matches(3)
    Next
    format_transparent_html =temp(0) & Join(split_str, "") & temp(1)
End Function
'---------------------------------------------------------------------------------------------
' �����ı��ļ�
Function SaveEncodedTextFile(sFilePath, sCharset, s)
    Dim oStream
    Set oStream = CreateObject("ADODB.Stream")
    ' ���ı�ģʽ
    oStream.Type = 2
    oStream.Mode = 3
    If Len(sCharset) > 0 Then
        On Error Resume Next
        oStream.Charset = sCharset
        If Err.number <> 0 Then
            oStream.Charset = "_autodetect_all"
        End If
        On Error Goto 0
    End If
    oStream.Open
    oStream.WriteText s
    ' 2 - adSaveCreateOverwrite
    On Error Resume Next
    oStream.SaveToFile sFilePath, 2
    If Err.number <> 0 Then
        SaveEncodedTextFile = False
    Else
        SaveEncodedTextFile = True
    End If
    On Error Goto 0
    Set oStream = Nothing
End Function
    
Function rename_utf8(ByVal utf8_str)
	rename_utf8 = ""	
	If Len(utf8_str) = 0 Then
		Exit Function
	End If	
	utf8_str=Hex_unicode_str(utf8_str)
	
	For i = 1 to Len(utf8_str)
		If Asc(Mid(utf8_str, i, 1)) = 63 Then
			utf8_str = replace(utf8_str, Mid(utf8_str, i, 1), "_")
		End If
	Next
	rename_utf8 = replace(utf8_str, "|", "��")
End Function

Function Hex_unicode_str(ByVal old_String)
    Dim i, UnAnsi_Str, Hex_UnAnsi_Str
    For i = 1 To Len(old_String)
        If Asc(Mid(old_String, i, 1)) = 63 Then UnAnsi_Str = UnAnsi_Str & Mid(old_String, i, 1)
    Next
        
    For i = 1 To Len(UnAnsi_Str)
        Hex_UnAnsi_Str = Mid(UnAnsi_Str, i, 1)
        Hex_UnAnsi_Str = "&H" & Hex(AscW(Hex_UnAnsi_Str))
        old_String = Replace(old_String, Mid(UnAnsi_Str, i, 1), "&#" & Int(Hex_UnAnsi_Str) & ";")
    Next
    Hex_unicode_str = old_String
End Function
