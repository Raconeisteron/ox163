'2011-7-4 163.shanhaijing.net
Dim url_parent, tags, page, Next_page

Function return_download_url(ByVal url_str)
'/index.php?page=post&s=view&id=44
'/index.php?page=post&s=list&tags=all&pid=768750
'/index.php?page=pool&s=show&id=5
On Error Resume Next
return_download_url=""

url_str="http://" & mid(url_str,InStr(LCase(url_str), "http://")+7)
'rule34
url_parent=mid(url_str,1,InStr(LCase(url_str), "/index.php?")-1)
url_parent=mid(url_parent,InStr(LCase(url_parent), "http://")+7)

If InStr(LCase(url_str), "page=post") >1 and InStr(LCase(url_str), "s=list") >1 Then	
	'tags
	If InStr(LCase(url_str), "tags=") >1 Then
		tags=mid(url_str,InStr(LCase(url_str), "tags=")+5)
	  If InStr(url_str, "&") >1 Then tags=mid(tags,1,InStr(tags, "&")-1)
	Else
		tags="all"
	End If

	'page
	If InStr(LCase(url_str), "&pid=") >1 Then
		page=mid(url_str,InStr(LCase(url_str), "&pid=")+5)
	  If IsNumeric(page)=false Then page=0
	Else
		page=0
	End If
	
	If page>0 Then
		If MsgBox("��ҳΪ��" & (int(page/25)+1) & "ҳ" & vbcrlf & "�Ƿ�ӵ�1ҳ��ʼ��", vbYesNo, "����")=vbyes Then page=0
	Else
	  page=0
	End If
	
	Next_page=0
	return_download_url = "inet|10,13|http://" & url_parent & "/index.php?page=post&s=list&tags=" & tags & "&pid=" & page & "|" & "http://" & url_parent & "/"
ElseIf InStr(LCase(url_str), "page=pool") >1 Then
	page="pool"
	return_download_url = "inet|10,13|" & url_str & "|" & url_str
End If
OX163_urlpage_Referer="http://" & url_parent & "/" & vbcrlf & "User-Agent: Mozilla/4.0 (compatible; MSIE 8.00; Windows XP)"

End Function
'--------------------------------------------------------
Function return_download_list(ByVal html_str, ByVal url_str)
On Error Resume Next	
Dim split_str, sid, pic_type
If page="pool" Then
	'pool���ֽ������Ƶ���tags���ֵĴ���
	html_str = Mid(html_str, InStr(LCase(html_str), "<span class=""thumb"" id=""") + len("<span class=""thumb"" id="""))
	html_str = Mid(html_str, 1, InStr(LCase(html_str), "</div>"))
	split_str = Split(html_str, "<span class=""thumb"" id=""")
  For split_i = 0 To UBound(split_str)
		html_str=""
		url_str=""
		sid=""
		pic_type=""
  	'sid
	  sid = Mid(split_str(split_i), 1, InStr(split_str(split_i), chr(34))-1)	  
	  split_str(split_i) = Mid(split_str(split_i), InStr(LCase(split_str(split_i)), "src=""")+len("src="""))	  	  
	  'url
	  url_str = Mid(split_str(split_i), 1, InStr(split_str(split_i), chr(34))-1)
	  
	  html_str = Mid(url_str,1,InStr(LCase(url_str), "/thumbnail_")-1)
	  url_str = Mid(url_str, InStr(LCase(url_str), "/thumbnail_")+len("/thumbnail_"))
	  'html_str��ȡ"/17"����
	  html_str = Mid(html_str,InStrrev(LCase(html_str), "/")) & "/"
	  'pic url
		url_str="http://" & url_parent & "/images" & html_str & url_str	
		If InStr(url_str,"?")>1 Then url_str=mid(url_str,1,InStr(url_str,"?")-1)
		pic_type=Mid(url_str,instrrev(url_str,"."))
		
		'pic name
	  split_str(split_i) = Mid(split_str(split_i), InStr(LCase(split_str(split_i)), "title=""")+len("title="""))
	  split_str(split_i) = Trim(Mid(split_str(split_i), 1, InStr(split_str(split_i), chr(34))-1))
	  split_str(split_i) = Trim(Mid(split_str(split_i), 1, InStr(split_str(split_i), "  ")-1))
	  If Len(split_str(split_i))>180 Then split_str(split_i)=Left(split_str(split_i),179) & "~"
    split_str(split_i) = replace(split_str(split_i),"|","_")
	  split_str(split_i) = "(" & url_parent & ") " & sid & " - " & split_str(split_i) & pic_type
		split_str(split_i) = "|" & url_str & "|" & split_str(split_i) & "|"
  Next  
  return_download_list=join(split_str,vbCrLf) & vbCrLf
  
ElseIf InStr(LCase(html_str), "class=""thumb""><a id=""") > 0 Then
	Next_page=0
	If InStr(LCase(html_str), "alt=""next"">") > 0 Then
		url_str=Mid(html_str,1,InStr(LCase(html_str), "alt=""next"">")-1)
		url_str=Mid(url_str, InStrrev(LCase(url_str), "pid=")+4)
		url_str=Mid(url_str,1,InStr(url_str, chr(34))-1)
		If IsNumeric(url_str) Then Next_page=Int(url_str)
	End If
	html_str = Mid(html_str, InStr(LCase(html_str), "class=""thumb""><a id=""") + len("class=""thumb""><a id="""))
	html_str = Mid(html_str, 1, InStr(LCase(html_str), "</div>"))
	split_str = Split(html_str, "class=""thumb""><a id=""")
  For split_i = 0 To UBound(split_str)
		html_str=""
		url_str=""
		sid=""
		pic_type=""
  	'sid
	  sid = Mid(split_str(split_i), 1, InStr(split_str(split_i), chr(34))-1)
	  
	  split_str(split_i) = Mid(split_str(split_i), InStr(LCase(split_str(split_i)), "<img src=""")+len("<img src="""))
	  	  
	  'url
	  url_str = Mid(split_str(split_i), 1, InStr(split_str(split_i), chr(34))-1)
		'http://thumbs2.booru.org/safe/638/thumbnail_d6679254289b8e22c2462b172f8347c66327e8c9.jpg?643485
		'http://safebooru.org//images/638/d6679254289b8e22c2462b172f8347c66327e8c9.jpg
		'http://lolibooru.com/thumbnails//106/thumbnail_7d027b47b1bfcb4cf39775332437dea8ae52a514.jpeg
		'http://lolibooru.com/images/106/7d027b47b1bfcb4cf39775332437dea8ae52a514.jpeg
		'html_str��ȡ"http://thumbs2.booru.org/safe/638"����
		'url_str��ȡ"/thumbnail_d6679254289b8e22c2462b172f8347c66327e8c9.jpg?643485"����
	  html_str = Mid(url_str,1,InStr(LCase(url_str), "/thumbnail_")-1)
	  url_str = Mid(url_str, InStr(LCase(url_str), "/thumbnail_")+len("/thumbnail_"))
	  'html_str��ȡ"/638"����
	  html_str = Mid(html_str,InStrrev(LCase(html_str), "/")) & "/"
	  'pic url
		url_str="http://" & url_parent & "/images" & html_str & url_str	
		If InStr(url_str,"?")>1 Then url_str=mid(url_str,1,InStr(url_str,"?")-1)
		pic_type=Mid(url_str,instrrev(url_str,"."))
		
		'pic name
	  split_str(split_i) = Mid(split_str(split_i), InStr(LCase(split_str(split_i)), "title=""")+len("title="""))
	  split_str(split_i) = Trim(Mid(split_str(split_i), 1, InStr(split_str(split_i), chr(34))-1))
	  split_str(split_i) = Trim(Mid(split_str(split_i), 1, InStr(split_str(split_i), "  ")-1))
	  If Len(split_str(split_i))>180 Then split_str(split_i)=Left(split_str(split_i),179) & "~"
	  split_str(split_i) = replace(split_str(split_i),"|","_")
	  split_str(split_i) = "(" & url_parent & ") " & sid & " - " & split_str(split_i) & pic_type
		split_str(split_i) = "|" & url_str & "|" & split_str(split_i) & "|"
  Next
  return_download_list=join(split_str,vbCrLf) & vbCrLf
  If Next_page>0 Then
  	return_download_list=return_download_list & "1|inet|10,13|http://" & url_parent & "/index.php?page=post&s=list&tags=" & tags & "&pid=" & Next_page
	End If
Else
return_download_list = "0"
End If

End Function