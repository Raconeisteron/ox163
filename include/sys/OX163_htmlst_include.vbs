<script language='javascript'>
//2013-10-28 since 2009-8-13 163.shanhaijing.net
var dl_type=0;
var html_temp="<br /><input type=\"submit\" name=\"xunlei\" id=\"xunlei\" value=\"Ѹ��4���ϰ汾\r\n(�����Զ�������)\" onclick=\"javascript:loadxunlei4()\">&nbsp;&nbsp;&nbsp;&nbsp;"+
"<input type=\"submit\" name=\"xunlei\" id=\"xunlei\" value=\"Ѹ��5���ϰ汾\r\n(�����Զ�������)\" onclick=\"javascript:loadxunlei5()\">&nbsp;&nbsp;&nbsp;&nbsp;"+
"<input type=\"submit\" name=\"flashget\" id=\"flashget\" value=\"�쳵1���ϰ汾\r\n(�����Զ�������)\" onclick=\"vbscript:flashget1\">&nbsp;&nbsp;&nbsp;&nbsp;"+
"<input type=\"submit\" name=\"flashget\" id=\"flashget\" value=\"�쳵2���ϰ汾\r\n(�����Զ�������)\" onclick=\"vbscript:flashget2\">&nbsp;&nbsp;&nbsp;&nbsp;"+
"<input type=\"submit\" name=\"flashget\" id=\"flashget\" value=\"�쳵3���ϰ汾\r\n(�����Զ�������)\" onclick=\"vbscript:flashget3\">&nbsp;&nbsp;&nbsp;&nbsp;<br /><br />";

function dl_all()
{
dl_type=0;
document.getElementById("htm_str").innerHTML="<hr/>"+html_temp;
}

function dl_ckeck()
{
dl_type=1;
var a = "<hr/><br/>һ���� <b style='color=#FF0000;'>"+(gPhotoID.length-1)+"</b> ��ͼƬ - "+
"���ص� <input name='num_start' id='num_start' type='text' size='8' maxlength='10' value='1' style='color=#FF0000;font-weight=bold'> �ŵ�"+
"�� <input name='num_end' id='num_end' type='text' size='8' maxlength='10' value='"+(gPhotoID.length-1)+"' style='color=#FF0000;font-weight=bold'> ��<br/>";
document.getElementById("htm_str").innerHTML=a+html_temp;
}

function UBB_ckeck(){
dl_type=0;
document.getElementById("htm_str").innerHTML="<hr/><br/><input type=\"submit\" value=\"����[img]***[/img]\r\n��ǩ��������\" onclick=\"javascript:UBB_IMG()\">&nbsp;&nbsp;&nbsp;&nbsp;"+
"<input type=\"submit\" value=\"����[url]***[/url]\r\n��ǩ��������\" onclick=\"javascript:UBB_URL1()\">&nbsp;&nbsp;&nbsp;&nbsp;"+
"<input type=\"submit\" value=\"����[url=***]***[/url]\r\n��ǩ��������\" onclick=\"javascript:UBB_URL2()\">&nbsp;&nbsp;&nbsp;&nbsp;<br /><br />";
}

function UBB_IMG(){
var a = new Array();
for(i=1;i<gPhotoID.length;i++){
a.push("[img]"+gPhotoInfo[i][0]+"[/img]");
}
window.clipboardData.setData('text',a.join("\r\n")); 
}

function UBB_URL1(){
var a = new Array();
for(i=1;i<gPhotoID.length;i++){
a.push("[url]"+gPhotoInfo[i][0]+"[/url]");
}
window.clipboardData.setData('text',a.join("\r\n")); 
}

function UBB_URL2(){
var a = new Array();
for(i=1;i<gPhotoID.length;i++){
a.push("[url="+gPhotoInfo[i][0]+"]"+fix_Unicode_FileName(gPhotoInfo[i][1])+"[/url]");
}
window.clipboardData.setData('text',a.join("\r\n")); 
}

function loadxunlei4()
{
var Thunder=null;
try{
	Thunder=new ActiveXObject("ThunderAgent.Agent");
	}catch(e){
	var Thunder=null
	};

if(dl_type==1){
var a1=Number(document.getElementById("num_start").value);
var a2=Number(document.getElementById("num_end").value)+1;
}else{
var a1=1;
var a2=gPhotoID.length;
};

for(i=a1;i<a2;i++){
Thunder.AddTask4(gPhotoInfo[i][0],fix_Unicode_FileName(gPhotoInfo[i][1]),"","",gPhotoInfo[i][2],-1,0,-1,gPhotoInfo[i][3],"","");
};
Thunder.CommitTasks2(1);
}

function loadxunlei5()
{
var ThunderAgent=null;
try{
	ThunderAgent = new ActiveXObject("ThunderAgent.Agent");
	}catch(e){
	var ThunderAgent=null
	};

if(dl_type==1){
var a1=Number(document.getElementById("num_start").value);
var a2=Number(document.getElementById("num_end").value)+1;
}else{
var a1=1;
var a2=gPhotoID.length;
};
	
for(i=a1;i<a2;i++){
ThunderAgent.AddTask5(gPhotoInfo[i][0], fix_Unicode_FileName(gPhotoInfo[i][1]), "", "", gPhotoInfo[i][2], -1, 0, -1,  gPhotoInfo[i][3], "", "", 1, "", -1);
};
ThunderAgent.CommitTasks2(1);
}


function flashget_ref(i)
{
var a = gPhotoInfo[i][2];
return a;
}

function flashget_cookie(i)
{
var a = gPhotoInfo[i][3];
return a;
}
</script>

<script language="VBScript">
'Great thanks to Vladimir Romanov(Author of ReGet Pro)
Function flashget1
	On Error Resume Next
	set JetCarCatch=CreateObject("JetCar.Netscape")
	if err<>0 then
		MsgBox("FlashGet not properly installed!"+ vbCrLf+"Please Install FlashGet again")
	else
		alut=msgbox("�Ƿ������Զ�������Ϣ" & vbcrlf & "(������ɼ�������վͼƬ�޷�����)",vbyesno)
		set links = document.links

		Dim a1,a2,num
		a1=0
		a1=clng(document.getElementById("num_start").value)-1
		a2=0
		a2=clng(document.getElementById("num_end").value)
		if a2=0 then a2=links.length
		num=a2-a1

		ReDim params(num*2)
		params(0)=flashget_ref(1)

		if alut=vbyes then
		for i = 0 to num-1
			params(i*2+1)=links(a1+i).href & "?/" & fix_Unicode_FileName(links(a1+i).innerText)
			params(i*2+2)=links(a1+i).innerText
		next
		else
		for i = 0 to num-1
			params(i*2+1)=links(a1+i).href
			params(i*2+2)=links(a1+i).innerText
		next
		end if
		
		JetCarCatch.AddUrlList params
        end If
End Function


Function flashget2
	On Error Resume Next
	set JetCarCatch = CreateObject("BHO.IFlashGetNetscapeEx")
	if err<>0 then
		MsgBox("FlashGet not properly installed!"+ vbCrLf+"Please Install FlashGet again")
	else
		set links = document.links

		Dim a1,a2,num
		a1=0
		a1=clng(document.getElementById("num_start").value)-1
		a2=0
		a2=clng(document.getElementById("num_end").value)
		if a2=0 then a2=links.length
		num=a2-a1

		ReDim params(num*2)
		params(0)=flashget_ref(1)
		for i = 0 to num-1
			params(i*2+1)=links(a1+i).href
			params(i*2+2)=links(a1+i).innerText
		next

		call JetCarCatch.AddAll(params, params(0), "FlashGet", flashget_cookie(1),0)
        end If
End Function

Function flashget3
	On Error Resume Next
	set JetCarCatch = CreateObject("BHO.IFlashGetNetscapeEx")
	if err<>0 then
		MsgBox("FlashGet not properly installed!"+ vbCrLf+"Please Install FlashGet again")
	else
		set links = document.links

		Dim a1,a2,num
		a1=0
		a1=clng(document.getElementById("num_start").value)-1
		a2=0
		a2=clng(document.getElementById("num_end").value)
		if a2=0 then a2=links.length
		num=a2-a1

		ReDim params(num*2)
		params(0)=flashget_ref(1)
		for i = 0 to num-1
			params(i*2+1)=links(a1+i).href
			params(i*2+2)=links(a1+i).innerText
		next

		call JetCarCatch.AddAll(params, params(0), "FlashGet3", flashget_cookie(1),0)
        end If
End Function

Function fix_Unicode_FileName(ByVal sLongFileName)
		On Error Resume Next
    Dim i, fixed_Unicode_tf, split_str,fix_Unicode    
    fix_Unicode_FileName = sLongFileName    
    split_str = Split(sLongFileName, "&#")
    If UBound(split_str) >= 1 Then        
        For i = 1 To UBound(split_str)            
            fixed_Unicode_tf = False
            If InStr(split_str(i), ";") > 1 Then                
                fix_Unicode = Mid(split_str(i), 1, InStr(split_str(i), ";") - 1)
                split_str(i) = Mid(split_str(i), InStr(split_str(i), ";") + 1)                
                '���16������ҳ����"&#xFF75;"
                If Left(LCase(fix_Unicode), 1) = "x" And Len(fix_Unicode) >= 2 Then
                    If is_Hex_code(Mid(fix_Unicode, 2)) And (LCase(fix_Unicode) <> "3f" And LCase(fix_Unicode) <> "5c" And LCase(fix_Unicode) <> "2f" And LCase(fix_Unicode) <> "22" And LCase(fix_Unicode) <> "3a" And LCase(fix_Unicode) <> "2a" And LCase(fix_Unicode) <> "3c" And LCase(fix_Unicode) <> "3e" And LCase(fix_Unicode) <> "7c") Then
                        fix_Unicode = Mid(fix_Unicode, 2)
                        fix_Unicode = ChrW(Int("&H" & fix_Unicode))
                        fixed_Unicode_tf = True
                    End If
                    '���10������ҳ����"&#65397;"
                ElseIf IsNumeric(fix_Unicode) = True Then
                    If Int(fix_Unicode) <> 63 And Int(fix_Unicode) <> 92 And Int(fix_Unicode) <> 47 And Int(fix_Unicode) <> 34 And Int(fix_Unicode) <> 58 And Int(fix_Unicode) <> 42 And Int(fix_Unicode) <> 60 And Int(fix_Unicode) <> 62 And Int(fix_Unicode) <> 124 Then
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
</script>

<b style='color=#FF0000;'>��ȴ�ҳ��װ�����֮��������(��������ͼƬ������ȫ)</b><br/>
<b style='color=#FF0000;'>��ҳ�沿�ֹ���ֻ��IE������ɣ���ʹ��Internet Explorer�����ҳ</b><br/><br/>
<b><label><input name="A" type="radio" id="limit_albums" value="0" onClick="javascript:dl_all()" checked='checked'/>ʹ�����ع�������ȫ��</label>&nbsp;&nbsp;
<label><input name="A" type="radio" id="limit_albums" value="1" onClick="javascript:dl_ckeck()"/>ʹ�����ع������ز���</label>&nbsp;&nbsp;
<label><input name="A" type="radio" id="limit_albums" value="2" onClick="javascript:UBB_ckeck()"/>������̳��ǩ��������</label></b>
<div name="htm_str" id="htm_str"></div><script language='javascript'>dl_all()</script><hr/><b>�����ֱ��ʹ���Ҽ�������ȫ����</b><br /><br />