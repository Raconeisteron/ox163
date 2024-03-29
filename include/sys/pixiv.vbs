'2014-1-10 visceroid & hein@shanghaijing.net
Dim started, multi_page, brief_mode, reg_bigmode, brief_mode_rf, retries_count, cache_index, root_str, next_page_str, parent_next_page_str, matches_cache, php_name
Dim manga_count
started = False
multi_page = True
retries_count = 0
cache_index = 0
ranking_page=0
manga_count=0
ranking_url=""
root_str = "http://www.pixiv.net"

Function return_download_url(ByVal url_str)
On Error Resume Next
	Dim sub_url_str, regex, matches, page_number, page_url
	return_download_url = ""
	Set regex = New RegExp
	regex.Global = True
	regex.IgnoreCase = True
	
	page_number=1
	brief_mode_rf=""
	reg_bigmode=""
	If Right(url_str,Len("&brief_mode=t"))="&brief_mode=t" Then
		brief_mode_rf="&brief_mode=t"
	ElseIf Right(url_str,Len("&brief_mode=f"))="&brief_mode=f" Then
		brief_mode_rf="&brief_mode=f"
	End If
	
	regex.Pattern = root_str & "/(\w+)\.php(?:\?(?:(?:((?:id|illust_id)=\d+)|((?:tag|word)=(?:[%\w\-]+\+?)+)|(type=(?:illust|user|reg_user))|(mode=(?:medium|big|manga|manga_big|all)|rest=(?:show|hide)|s_mode=(?:s_tc|s_tag))|(p=\d+)|[^&]+)(?:&|$))*)?"
	Set matches = regex.Execute(url_str)
	For Each match In matches
		Select Case LCase(match.SubMatches(0))
			Case "member", "member_illust"
				php_name="member_illust.php"
				multi_page = (match.SubMatches(4) = "")
				If not multi_page Then
					'match.SubMatches(1)=illust_id=48061189
					reg_bigmode="json"
					sub_url_str = "/rpc/illust_list.php?illust_ids=" & replace(match.SubMatches(1),"illust_id=","") & "&verbosity="
				Else
					sub_url_str = "/member_illust.php?" & match.SubMatches(1) & "&" & match.SubMatches(2) & "&" & match.SubMatches(4)
				End If
			Case "tags"
				php_name="search.php"
				'http://www.pixiv.net/tags.php?tag=%E3%80%90%E9%AD%94%E5%A5%B3%E3%81%AE%E5%A5%91%E7%B4%84%E3%80%91&tset=2
				'http://www.pixiv.net/search.php?s_mode=s_tag_full&word=%E3%80%90%E9%AD%94%E5%A5%B3%E3%81%AE%E5%A5%91%E7%B4%84%E3%80%91
				sub_url_str = replace(lcase(match.SubMatches(2)),"tag=","s_mode=s_tag_full&word=")
				sub_url_str = "/search.php?" & sub_url_str
			Case "search"
				php_name="search.php"
				sub_url_str=Mid(url_str,instr(url_str,"/search.php?")+12)
				sub_url_str=replace(sub_url_str,"&brief_mode=t","")
				sub_url_str=replace(sub_url_str,"&brief_mode=f","")
				If match.SubMatches(5)<> "" Then sub_url_str=replace(sub_url_str,"&" & match.SubMatches(5),"")
				sub_url_str = "/search.php?" & sub_url_str
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
			Case "ranking"
				'http://www.pixiv.net/ranking.php?format=json&mode=daily&p=1
				php_name=LCase(match.SubMatches(0)) & ".php"
				sub_url_str=Mid(url_str,instr(url_str,".php?")+5)
				If match.SubMatches(5)<> "" Then sub_url_str=replace(sub_url_str,"&" & match.SubMatches(5),"")
				sub_url_str = "/" & php_name & "?" & sub_url_str & "&format=json"
				ranking_url = sub_url_str
				reg_bigmode="json"
				ranking_page=2
			  parent_next_page_str = "1|inet|10,13|" & root_str & "/" & ranking_url & "&p=2"
			Case "ranking_area"
				php_name=LCase(match.SubMatches(0)) & ".php"
				sub_url_str=Mid(url_str,instr(url_str,".php?")+5)
				If match.SubMatches(5)<> "" Then sub_url_str=replace(sub_url_str,"&" & match.SubMatches(5),"")
				sub_url_str = "/" & php_name & "?" & sub_url_str
			Case Else
				Exit Function
		End Select
		If match.SubMatches(5) <> "" Then
			If MsgBox("頁倦貫及1匈蝕兵蛍裂��", vbYesNo, "諒籾") = vbno Then
				If instr(sub_url_str,"?")<1 Then
					sub_url_str = sub_url_str & "?" & match.SubMatches(5)
				Else
					sub_url_str = sub_url_str & "&" & match.SubMatches(5)
				End If
			End If
		End If
		regex.Pattern = "(?:(?:\?|&)+(?=$)|(\?|&)&+)"
		next_page_str = "1|inet|10,13|" & root_str & regex.Replace(sub_url_str, "$1")
		
		If instr(LCase(next_page_str),"illust_id=")>0 Then
			php_name="illust_id"
			brief_mode=vbYes
		End If
		
		brief_mode=0
		'	brief_mode = (MsgBox("頁倦策待只鮫�┣瓶端鯊垠嵶�圭塀����" & vbcrlf & vbcrlf & "2013定4埖岻朔議恬瞳駅倬僉＾倦￣嘉嬬屎鳩蛍裂", vbYesNo, "諒籾") = vbYes)
		
		Exit For
	Next
	
	return_download_url = "inet|10,13|" & root_str & "|" & root_str & vbcrlf & "User-Agent: Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; WOW64; Trident/7.0)"
	OX163_urlpage_Referer = "http://www.pixiv.net/member_illust.php?mode=medium&illust_id=12345" & vbCrLf & "User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko"

End Function

'---------------------------------------------------------------------------------------------
Function return_albums_list(ByVal html_str, ByVal url_str)
On Error Resume Next
	return_albums_list = ""
	Dim name_filter_str, link_str, rename_str, description_str, regex, matches
	name_filter_str = ""
	Set regex = New RegExp
	regex.Global = True
	regex.IgnoreCase = True
	
	If started Then
		'<li><input name="id[]" value="1593522" type="checkbox" /><div class="usericon"><a href="member.php?id=1593522"><img src="http://img46.pixiv.net/profile/kasetsu_03/mobile/3399441_80.jpg" alt="麓僣"/></a></div><div class="userdata"><a href="member.php?id=1593522">麓僣</a>はじめまして、＾カセツ￣と�iみます。<br><span>&nbsp;</span></div></li>
		regex.Pattern = "<div[^>]*class=""userdata""[^>]*>\s*<a[^>]*href=""member\.php\?id=(\d+)[^""]*""[^>]*>\s*([^<" & name_filter_str & "]+)[^<]*</a>([\s\S^]*?)<br>"
		Set matches = regex.Execute(html_str)
		If matches.Count = 0 Then
			If process_retry=ture Then	return_albums_list = next_page_str
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
	Dim page_count, regex, matches, ids
	Set regex = new RegExp
	regex.Global = True
	regex.IgnoreCase = True

	'殊霞頁倦鞠遜
	If not started Then
		check_login html_str 
		return_download_list = next_page_str
		Exit Function
	End If
	
		'賠茅朴沫匈showcase坪否
		If InStr(LCase(html_str), "<section class=""showcase"">")>0 Then
			Dim html_str_temp
			html_str_temp=mid(html_str,1,InStr(LCase(html_str), "<section class=""showcase"">")-1)
			html_str=mid(html_str,InStr(LCase(html_str), "<section class=""showcase"">")+len("<section class=""showcase"">"))
			html_str=html_str_temp & mid(html_str,InStr(LCase(html_str), "</section>")+len("</section>"))
		End If
			
		'賠茅原継氏埀蒙歩鯉塀
		If InStr(LCase(html_str), "data-src=")>1 Then
				html_str=format_transparent_html(html_str)
		End If

		'登僅匈中窃侏聞喘斤哘屎夸
		'setp3,資函強夕
		
		'何蛍汽夕匈中凪糞頁manga��俶勣登僅
		If manga_count=0 and reg_bigmode="big" Then
			regex.Pattern = "<li>(?:�}方旦誘後|匯肝來誘後謹��恬瞳|匯肝來誘後謹嫖恬瞳) (\d+)P</li>"
			Set matches = regex.Execute(html_str)
			If matches.count>0 Then
				reg_bigmode="manga"
			End If
		End If
		
		If reg_bigmode="ugoira" Then
			If InStr(LCase(html_str),LCase("_ugoira1920x1080.zip"))>0 Then
				add_download_list_ugoira html_str, return_download_list
				Call Set_next_json_url
			Else
				If process_retry=false Then	Call Set_next_json_url
			End If
			
		ElseIf reg_bigmode="big" Then
			If InStr(LCase(html_str),LCase("class=""original-image"""))>0 Then
				add_download_list_big html_str, return_download_list
				Call Set_next_json_url
			Else
				If process_retry=false Then	Call Set_next_json_url
			End If
					
		ElseIf reg_bigmode="manga" Then
			If manga_count=0 Then
				'<span class="total">5</span>
				regex.Pattern = "<li>(?:�}方旦誘後|匯肝來誘後謹��恬瞳|匯肝來誘後謹嫖恬瞳) (\d+)P</li>"				
				page_count = regex.Execute(html_str).Item(0).SubMatches(0)
				If IsNumeric(page_count) Then manga_count=int(page_count)
				If manga_count>0 Then
					next_page_str="1|inet|10,13|" & root_str & "/member_illust.php?mode=manga_big&illust_id=" & matches_cache.Item(cache_index-1).SubMatches(0) & "&page=0"
				Else
					manga_count=1
					next_page_str="1|inet|10,13|" & root_str & "/member_illust.php?mode=big&illust_id=" & matches_cache.Item(cache_index-1).SubMatches(0)
				End If
			ElseIf manga_count>0 and InStr(LCase(html_str),LCase("<img src="""))>0 Then
				add_download_list_manga html_str, return_download_list
				Call Set_next_json_url
			Else
				If process_retry=false Then	Call Set_next_json_url
			End If
			
		'setp2,蛍裂json方象
		ElseIf reg_bigmode="json" Then
			'廬算ranking.php匈中json方象
			If php_name="ranking.php" and cache_index = 0 Then html_str=format_ranking_html(html_str)
			regex.Pattern = """illust_id"":""([0-9]{1,})"",[\s\S]*?""(?:illust_title)"":""([^""]*)"",[\s\S]*?""illust_type"":""([012])"""
			Set matches = regex.Execute(html_str)
			
			If matches.Count = 0 Then
				If process_retry=false Then reg_bigmode="":cache_index=0:next_page_str=parent_next_page_str:parent_next_page_str=""
			Else
				Set matches_cache = matches
				Call Set_next_json_url				
			End If
			
		'setp1夕頭双燕資函ids
		ElseIf cache_index=0 and reg_bigmode="" Then
			regex.Pattern ="<a(?:\s*href=""/?(member_illust\.php\?mode=(\w+)&(?:amp;)?illust_id=(\d+))(?:(?!ref=)[^""])*""\s*class=""(work[^""]*)"")[^>]*?>[\s\S]*?""_layout-thumbnail""[\s\S]*?<img(?:\s*(?:src=""([^""]+)(?:_(?:s|m|(?:master\d+))\.)(\w+)[^""]*""|\w+=""[^""]*""))[^>]*?>" 
			Set matches = regex.Execute(html_str)
			If matches.Count = 0 Then
				If process_retry=false Then next_page_str=parent_next_page_str:parent_next_page_str=""
			Else
				ids=""
				For Each match In matches
					Select Case match.SubMatches(1)
						Case "medium"
							If IsNumeric(match.SubMatches(2)) Then ids=ids & match.SubMatches(2) & ","
					End Select
				Next
				If Right(ids,1)="," Then ids=Left(ids,Len(ids)-1)
				retries_count = 0
				next_page_str = "0"
				reg_bigmode="json"
				'資函和匯井中仇峽
				If cache_index = 0 Then
					next_page_str = get_next_page(html_str)
					parent_next_page_str = next_page_str
				End If
				'資函json
				next_page_str = "1|inet|10,13|" & root_str & "/rpc/illust_list.php?illust_ids=" & Replace(ids,",","%2C") & "&verbosity="
			End If
		End If		
	If next_page_str = "0" and brief_mode_rf="" Then	MsgBox "蛍裂厮頼撹。", vbOKOnly, "戻佰"
		
	return_download_list = return_download_list & next_page_str

End Function
'----------------------------------------------------------------------------------------------------

Function process_retry()
On Error Resume Next
	process_retry=True
	retries_count = retries_count + 1
	If retries_count > 3 Then
		retries_count=0
		process_retry=False
	End If
End Function
'----------------------------------------------------------------------------------------------------
'step2
Function Set_next_json_url()
	Set_next_json_url=""
	retries_count=0
	manga_count=0
	If cache_index<matches_cache.count Then
		Select Case matches_cache.Item(cache_index).SubMatches(2)
		Case "1"
			reg_bigmode="manga"
			next_page_str="1|inet|10,13|" & root_str & "/member_illust.php?mode=medium&illust_id=" & matches_cache.Item(cache_index).SubMatches(0)
		Case "2"
			reg_bigmode="ugoira"
			next_page_str="1|inet|10,13|" & root_str & "/member_illust.php?mode=medium&illust_id=" & matches_cache.Item(cache_index).SubMatches(0)
		Case Else
			reg_bigmode="big"
			next_page_str="1|inet|10,13|" & root_str & "/member_illust.php?mode=medium&illust_id=" & matches_cache.Item(cache_index).SubMatches(0)
		End Select
		cache_index=cache_index+1
	Else
		reg_bigmode=""
		cache_index=0
		next_page_str = parent_next_page_str
		parent_next_page_str=""
		If php_name="ranking.php" and ranking_page>0 and ranking_page<10 Then
			reg_bigmode="json"
			ranking_page=ranking_page+1
			parent_next_page_str = "1|inet|10,13|" & root_str & "/" & ranking_url & "&p=" & ranking_page
		End If
	End If
End Function
'---------------------------------------------
Function format_ranking_html(ByVal html_str)
On Error Resume Next
    format_ranking_html = html_str
		'{
		'"illust_id":48053861,
		'"title":"\u30aa\u30ec\u3093\u3061\u306e\u30aa\u30e0\u30ec\u30c4\u304c\u30b1\u30c1\u30e3\u30c3\u30d7\u3092\u62d2\u5426\u308b\u3093\u3060\u304c",
		'"width":755,"height":900,"date":"2015\u5e7401\u670808\u65e5 00:32",
		'"tags":["\u30dd\u30b1\u30e2\u30f3","\u30d4\u30ab\u30c1\u30e5\u30a6","\u30b1\u30c1\u30e3\u30c1\u30e5\u30a6","\u306a\u306b\u3053\u308c\u304b\u308f\u3044\u3044","\u3053\u308c\u304c\u666e\u901a\u3067\u3059","\u3080\u3057\u308d\u53d7\u3051\u5165\u308c\u4f53\u52e2","\u30b1\u30c1\u30e3\u30c3\u30d7\u30db\u30fc\u30eb","\u30aa\u30e0\u30c1\u30e5\u30a6","ATARU"],
		'"url":"http:\/\/i2.pixiv.net\/c\/240x480\/img-master\/img\/2015\/01\/08\/00\/32\/26\/48053861_p0_master1200.jpg",
		'"illust_type":"0",
		'"illust_book_style":"0",
		'"illust_page_count":"1",
		'"illust_upload_timestamp":1420644746,
		'"user_id":771029,
		'"user_name":"\u6771\u307f\u306a\u3064\uff20\u6b215\u6708",
		'"profile_img":"http:\/\/i2.pixiv.net\/img30\/profile\/sdv2032\/8186269_s.gif","rank":1,"yes_rank":10,"total_score":11147,"view_count":40028,"illust_content_type":{"sexual":0,"lo":false,"grotesque":false,"violent":false,"homosexual":false,"drug":false,"thoughts":false,"antisocial":false,"religion":false,"original":false,"furry":false,"bl":false,"yuri":false},"attr":""
		'}
    '廬算葎
		'{
		'"tags":[],
		'"url":"http:\/\/i1.pixiv.net\/img-inf\/img\/2015\/01\/08\/00\/31\/35\/48053836_s.jpg",
		'"user_name":"\u3042\u3065\u306a",
		'"illust_id":"48053836",
		'"illust_title":"Happy new year\u3010\u30ea\u30f4\u30a1\u30a4\u73ed\u3011",
		'"illust_user_id":"8500710",
		'"illust_restrict":"0",
		'"illust_x_restrict":"0",
		'"illust_type":"2"
		'}

		Dim split_str, matches(5)
    If InStr(html_str, "{""illust_id"":") > 0 Then
        html_str = Mid(html_str, InStr(LCase(html_str), "{""illust_id"":") + Len("{""illust_id"":"))
    Else
        format_ranking_html = ""
        Exit Function
    End If
    split_str = Split(html_str, "{""illust_id"":")
    For i = 0 To UBound(split_str)
    		matches(0) = ""
    		matches(1) = ""
    		matches(2) = ""
    		matches(3) = ""
    		matches(4) = ""
    		matches(5) = ""
    		'illust_id
    		matches(0)=Mid(split_str(i),1,InStr(split_str(i),",")-1)
    		'url
    		matches(1)=Mid(split_str(i), InStr(LCase(split_str(i)), """url"":""") + Len("""url"":"""))
    		matches(1)=Mid(matches(1),1,InStr(matches(1),"""")-1)
    		'title
    		matches(2)=Mid(split_str(i), InStr(LCase(split_str(i)), """title"":""") + Len("""title"":"""))
    		matches(2)=Mid(matches(2),1,InStr(matches(2),"""")-1)
    		'user_id
    		matches(3)=Mid(split_str(i), InStr(LCase(split_str(i)), """user_id"":") + Len("""user_id"":"))
    		matches(3)=Mid(matches(3),1,InStr(matches(3),",")-1)
    		'user_name
    		matches(4)=Mid(split_str(i), InStr(LCase(split_str(i)), """user_name"":""") + Len("""user_name"":"""))
    		matches(4)=Mid(matches(4),1,InStr(matches(4),"""")-1)
    		'illust_type
    		matches(5)=Mid(split_str(i), InStr(LCase(split_str(i)), """illust_type"":""") + Len("""illust_type"":"""))
    		matches(5)=Mid(matches(5),1,InStr(matches(5),"""")-1)
    		split_str(i)="{""tags"":[],""url"":""" & matches(1) & """,""user_name"":""" & matches(4) & """,""illust_id"":""" & matches(0) & """,""illust_title"":""" & matches(2) & """,""illust_user_id"":""" & matches(3) & """,""illust_type"":""" & matches(5) & """}"
    Next
    format_ranking_html ="[" & Join(split_str, ",") & "]"
End Function
'----------------------------------------------------------------------------------------------------
Function add_download_list_big(byval big_str, ByRef download_list)
On Error Resume Next
	Dim file_ID,file_name,file_Url
	'data-src="http://i2.pixiv.net/img-original/img/2015/01/09/00/04/21/48069269_p0.jpg" class="original-image">
	big_str=mid(big_str,1,InStr(LCase(big_str),"class=""original-image"""))
	big_str=mid(big_str,InStrrev(LCase(big_str),"data-src=""")+10)
	file_Url=mid(big_str,1,instr(big_str,"""")-1)
	big_str=mid(file_Url,InStrrev(file_Url,"."))
	
	file_ID=matches_cache.Item(cache_index-1).SubMatches(0)
	file_name=fix_Unicode_Name(matches_cache.Item(cache_index-1).SubMatches(1))
	file_name="(pid-" & file_ID & ")" & rename_utf8(file_name) & big_str
	download_list = "|" & file_Url & "?" & (CDbl(Now()) * 10000000000) & "|" & file_name & "|" & vbCrLf
End Function
'----------------------------------------------------------------
Function add_download_list_manga(byval manga_str, ByRef download_list)
On Error Resume Next
	Dim file_ID,file_name,file_Url,manga_i
	
	'<img src="http://i1.pixiv.net/img-original/img/2015/01/08/02/13/17/48055260_p0.jpg" onclick="(window.open('', '_self')).close()">
	manga_str=mid(manga_str,InStr(LCase(manga_str),"<img src=""")+10)
	file_Url=mid(manga_str,1,instr(manga_str,"""")-1)
	manga_str=mid(file_Url,InStrrev(file_Url,"."))
	file_Url=mid(file_Url,1,InStrrev(file_Url,"_p")+1)
	'圻只鮫個井念朔蛍順�瀘�ID=11319931��恷仟個井揮img-original涙big��
	'11319936_big_p0.jpg 06/16/2010 20:43--------------11319930_p0.jpg 06/16/2010 20:43
	file_ID=matches_cache.Item(cache_index-1).SubMatches(0)
	file_name=fix_Unicode_Name(matches_cache.Item(cache_index-1).SubMatches(1))
	file_name="(pid-" & file_ID & ")" & rename_utf8(file_name)
	For manga_i=0 to 0'manga_count-1
		download_list =download_list & "|" & file_Url & manga_i & manga_str & "?" & (CDbl(Now()) * 10000000000) & "|" & file_name & "_p" & manga_i & manga_str & "|" & vbCrLf
	Next
End Function
'----------------------------------------------------------------
Function add_download_list_ugoira(byval ugoira_str, ByRef download_list)
On Error Resume Next
		'pixiv.context.illustId         = "44387029";
		'pixiv.context.illustTitle      = "Hello ミク";pixiv.context.userId           = "395595";
		'pixiv.context.userName         = "KD"
		'{"src":"http:\/\/i2.pixiv.net\/img-zip-ugoira\/img\/2014\/06\/29\/14\/08\/25\/44387029_ugoira1920x1080.zip"
		Dim file_ID,file_name,file_Url,file_description
		
		ugoira_str=mid(ugoira_str,1,instr(LCase(ugoira_str),LCase("_ugoira1920x1080.zip"))) & "ugoira1920x1080.zip"
		
		file_Url=Mid(ugoira_str,InStrrev(ugoira_str,chr(34))+1)
		file_Url=replace(file_Url,"\/","/")
		
		file_ID=mid(ugoira_str,InStr(LCase(ugoira_str),LCase("pixiv.context.illustId")))
		file_ID=mid(file_ID,InStr(file_ID,"""")+1)
		file_ID=mid(file_ID,1,InStr(file_ID,"""")-1)

		file_description=mid(ugoira_str,InStr(LCase(ugoira_str),LCase("pixiv.context.illustTitle")))
		file_description=mid(file_description,InStr(file_description,"""")+1)
		file_description=mid(file_description,1,InStr(file_description,"""")-1)
		file_description=fix_Unicode_Name(file_description)
		file_name=file_description
		
		If Len(file_name)>200 Then file_name=left(file_name,200)
		file_name="(pid-" & file_ID & ")" & rename_utf8(file_name) & "_ugoira1920x1080.zip"
		
		download_list = "zip|" & file_Url & "?" & (CDbl(Now()) * 10000000000) & "|" & file_name & "|" & file_description & vbCrLf
End Function
'---------------------------------------------------------------------------------------------
Function check_login(ByVal html_str)
On Error Resume Next
	Dim regex, matches
	Set regex = new RegExp
	regex.Global = True
	
	regex.Pattern = "<input[^>]*value=""login""[^>]*>"
	If regex.Execute(html_str).Count > 0 Then
		MsgBox "艇珊短嗤鞠遜PIXIV。" & vbCrLf & "萩聞喘坪崔箝誓匂鞠遜賜聞喘IE窃箝誓匂鞠遜" & vbCrLf & "旺拘僉＾肝指から徭�啜弔縫蹈哀ぅ鵝臼４�cookies。", vbOKOnly + vbExclamation, "戻佰"
		next_page_str = "0"
	Else
		started = True
	End If
End Function
'---------------------------------------------------------------------------------------------
Function get_next_page(ByVal html_str)
On Error Resume Next
	get_next_page = "0"
	Dim regex, matches
	Set regex = New RegExp
	regex.Global = True
	regex.Pattern = "<a[^>]*href=""([^>\s]+)""[^>]*rel=""next""[^>]*>.*?</a>\s*</li>"
								 '仟search.php匈中
								 '<li><a href="?word=sega&amp;order=date_d&amp;p=2" rel="next" title="和匯中"><span class="_button-lite"><i class="_icon sprites-next"></i></span></a></li>
								 '恬宀匈中嚥析search.php匈中
								 '<li><a href="member_illust.php?id=517481&p=2" class="button" rel="next">和匯中 ?</a></li>
								 '<li class="next"><a href="?word=sega&amp;order=date_d&amp;p=2" class="ui-button-light" rel="next" title="和匯中">&gt;</a></li>
								 
								 '仟ranking.php匈中
								 '<span class="next"><a href="?mode=daily&amp;p=2&amp;ref=rn-h-next" rel="next" class="_button" title="和匯中"><i class="_icon sprites-next-linked"></i></a></span>
	If php_name="ranking.php" and ranking_page>0 and ranking_page<10 Then
		ranking_page=ranking_page+1
		get_next_page = "1|inet|10,13|" & root_str & "/" & ranking_url & "&p=" & ranking_page
		Exit Function
	End If

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
Function format_transparent_html(ByVal html_str)
On Error Resume Next
	Dim FTH_regex
	Set FTH_regex = new RegExp
	FTH_regex.Global = True
	FTH_regex.IgnoreCase = True
	'<img src="http://i2.pixiv.net/img-inf/img/2011/02/11/23/03/36/16592817_s.jpg" alt="" class="_thumbnail ui-scroll-view" data-filter="thumbnail-filter" data-src="http://i2.pixiv.net/img-inf/img/2011/02/11/23/03/36/16592817_s.jpg" data-tags="寄紘�_き" data-user-id="465458">
	FTH_regex.Pattern = "<img[^>]*?src=""([^""]+)""[^>]*?data-src=""([^""]+)""[^>]*?>"
	html_str=FTH_regex.replace(html_str,"<img src=""$2"" alt="""">")
	'<h2><a href="member_illust.php?mode=medium&amp;illust_id=44501062">オオダマ</a></h2>
	'--><h1 class="title" title="オオダマ">オオダマ</h1>
	FTH_regex.Pattern = "<h2><a[^>]*?>((?:(?!</a>).)*)</a></h2>"
	html_str=FTH_regex.replace(html_str,"<h1 class=""title"" title=""$1"">$1</h1>")
	format_transparent_html=html_str
End Function

'---------------------------------------------------------------------------------------------
Function fix_Unicode_Name(ByVal sLongFileName)
On Error Resume Next
    Dim i,fixed_Unicode_tf,split_str,fix_Unicode    
    fix_Unicode_Name = sLongFileName 
    split_str = Split(sLongFileName, "\u")
    If UBound(split_str) >= 1 Then
        For i = 1 To UBound(split_str)
            fixed_Unicode_tf = False
            If Len(split_str(i)) > 3 Then
                fix_Unicode = Mid(split_str(i), 1, 4)
                If Len(split_str(i)) > 4 Then
                	split_str(i) = Mid(split_str(i), 5)
                Else
                	split_str(i) = ""
                End If
                
                If is_Hex_code(fix_Unicode) Then
                    fix_Unicode = ChrW(Int("&H" & fix_Unicode))
                    fixed_Unicode_tf = True
                End If
                
                If fixed_Unicode_tf = False Then
                    split_str(i) = "\u" & fix_Unicode & split_str(i)
                Else
                    split_str(i) = fix_Unicode & split_str(i)
                End If
            End If
        Next
        fix_Unicode_Name = Join(split_str, "")
        fix_Unicode_Name = replace(fix_Unicode_Name,"\/","/") 
    End If
End Function

Function is_Hex_code(ByVal Hex_code)
    Dim i
    is_Hex_code = True
    If Len(Hex_code)>0 And Len(Hex_code)<7 Then
        For i=1 To Len(Hex_code)
            If InStr("ABCDEFabcdef0123456789", Mid(Hex_code, i, 1)) < 1 Then is_Hex_code = False: Exit Function
        Next
    Else
        is_Hex_code = False
    End If
End Function
'----------------------------------------------------------------------
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
'----------------------------------------------------------------------
' 隠贋猟云猟周
Function SaveEncodedTextFile(sFilePath, sCharset, s)
    Dim oStream
    Set oStream = CreateObject("ADODB.Stream")
    ' 參猟云庁塀
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
    
