<script language='javascript'>
//2014-2-18 since 2009-8-13 163.shanhaijing.net
var dl_type=0;
var html_temp="<br />"+
"<button name=\"xunlei\" id=\"xunlei\" onclick=\"javascript:QQDownload4()\">QQ����4���ϰ汾<br/>(�����Զ�������)<br/>&nbsp;</button>&nbsp;&nbsp;&nbsp;&nbsp;"+
"<button name=\"xunlei\" id=\"xunlei\" onclick=\"javascript:loadxunlei7()\">Ѹ��7���ϰ汾<br/>(�����Զ�������)<br/>&nbsp;</button>&nbsp;&nbsp;&nbsp;&nbsp;"+
"<button name=\"xunlei\" id=\"xunlei\" onclick=\"javascript:loadxunlei5()\">Ѹ��5���ϰ汾<br/>(�����Զ�������)<br/>&nbsp;</button>&nbsp;&nbsp;&nbsp;&nbsp;"+
"<button name=\"xunlei\" id=\"xunlei\" onclick=\"javascript:loadxunlei4()\">Ѹ��4���ϰ汾<br/>(�����Զ�������)<br/>&nbsp;</button>&nbsp;&nbsp;&nbsp;&nbsp;"+
"<button name=\"flashget\" id=\"flashget\" onclick=\"vbscript:flashget1\">�쳵1���ϰ汾<br/>(�����Զ�������)<br/>��֧��IE11�����ϰ汾</button>&nbsp;&nbsp;&nbsp;&nbsp;"+
"<button name=\"flashget\" id=\"flashget\" onclick=\"vbscript:flashget2\">�쳵2���ϰ汾<br/>(�����Զ�������)<br/>��֧��IE11�����ϰ汾</button>&nbsp;&nbsp;&nbsp;&nbsp;"+
"<button name=\"flashget\" id=\"flashget\" onclick=\"vbscript:flashget3\">�쳵3���ϰ汾<br/>(�����Զ�������)<br/>��֧��IE11�����ϰ汾</button>&nbsp;&nbsp;&nbsp;&nbsp;<br/><br />";

function dl_all()
{
dl_type=0;
document.getElementById("htm_str").innerHTML="<hr/>"+html_temp;
}

function dl_ckeck()
{
dl_type=1;
var a = "<hr/><br/>һ���� <b style='color:#FF0000;'>"+(gPhotoID.length-1)+"</b> ��ͼƬ - "+
"���ص� <input name='num_start' id='num_start' type='text' size='8' maxlength='10' value='1' style='color:#FF0000;font-weight:bold'> �ŵ�"+
"�� <input name='num_end' id='num_end' type='text' size='8' maxlength='10' value='"+(gPhotoID.length-1)+"' style='color:#FF0000;font-weight:bold'> ��<br/>";
document.getElementById("htm_str").innerHTML=a+html_temp;
}

function UBB_ckeck(){
dl_type=0;
document.getElementById("htm_str").innerHTML="<hr/><br/><button onclick=\"javascript:UBB_IMG()\">����[img]***[/img]<br/>��ǩ��������</button>&nbsp;&nbsp;&nbsp;&nbsp;"+
"<button onclick=\"javascript:UBB_URL1()\">����[url]***[/url]<br/>��ǩ��������</button>&nbsp;&nbsp;&nbsp;&nbsp;"+
"<button onclick=\"javascript:UBB_URL2()\">����[url=***]***[/url]<br/>��ǩ��������</button>&nbsp;&nbsp;&nbsp;&nbsp;<br /><br />";
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
	}

if(dl_type==1){
var a1=Number(document.getElementById("num_start").value);
var a2=Number(document.getElementById("num_end").value)+1;
}else{
var a1=1;
var a2=gPhotoID.length;
}

for(i=a1;i<a2;i++){
Thunder.AddTask4(gPhotoInfo[i][0],fix_Unicode_FileName(gPhotoInfo[i][1]),"","",gPhotoInfo[i][2],-1,0,-1,gPhotoInfo[i][3],"","");
}
Thunder.CommitTasks2(1);
}

function loadxunlei5()
{
var ThunderAgent=null;
try{
	ThunderAgent = new ActiveXObject("ThunderAgent.Agent");
	}catch(e){
	var ThunderAgent=null
	}

if(dl_type==1){
var a1=Number(document.getElementById("num_start").value);
var a2=Number(document.getElementById("num_end").value)+1;
}else{
var a1=1;
var a2=gPhotoID.length;
}
	
for(i=a1;i<a2;i++){
ThunderAgent.AddTask5(gPhotoInfo[i][0], fix_Unicode_FileName(gPhotoInfo[i][1]), "", "", gPhotoInfo[i][2], -1, 0, -1,  gPhotoInfo[i][3], "", "", 1, "", -1);
}
ThunderAgent.CommitTasks2(1);
}

function flashget_ref(i)
{
return gPhotoInfo[i][2];
}

function flashget_cookie(i)
{
return gPhotoInfo[i][3];
}

function loadxunlei7()
{
var ThunderAgent=null;
try{
ThunderAgent = new ActiveXObject("ThunderAgent.Agent");
}catch(e){
	try{
	ThunderAgent = new ActiveXObject("ThunderAgent.Agent64");
	}catch(e){
	var ThunderAgent=null
	}
}
if(dl_type==1){
var a1=Number(document.getElementById("num_start").value);
var a2=Number(document.getElementById("num_end").value)+1;
}else{
var a1=1;
var a2=gPhotoID.length;
}
for(i=a1;i<a2;i++){
ThunderAgent.AddTask12(gPhotoInfo[i][0], fix_Unicode_FileName(gPhotoInfo[i][1]), "", "", gPhotoInfo[i][2], "UTF-8", -1, 0, -1,gPhotoInfo[i][3], "", gPhotoInfo[i][2], 0, "rightup");
}

ThunderAgent.CommitTasks2(1);
}


function QQDownload4()
{
var QQIEHelper=null;
try{
QQIEHelper = new ActiveXObject("QQIEHelper.QQRightClick.2");
}catch(e){
	var QQIEHelper=null
}

if(dl_type==1){
var a1=Number(document.getElementById("num_start").value);
var a2=Number(document.getElementById("num_end").value)+1;
}else{
var a1=1;
var a2=gPhotoID.length;
}

for(i=a1;i<a2;i++){
QQIEHelper.AddTask3(gPhotoInfo[i][0], gPhotoInfo[i][2], "", 0, fix_Unicode_FileName(gPhotoInfo[i][1]));
}
QQIEHelper.SendMultiTask();
}

function fix_Unicode_FileName(sLongFileName){
if(sLongFileName){
//str=str.replace(/&amp;((#[^-?\\d+$]{1,7})|([A-Za-z]{2,6}));/gi,"&$1;");/*��ԭ&#12345;&Auml;���������ַ�*/
sLongFileName=sLongFileName.replace(/&#([0-9]{1,8});/gi,function(s,s1){return CharCodeB10(s1)});
sLongFileName=sLongFileName.replace(/&#x([A-Za-z]{2,6});/gi,function(s,s1){return CharCodeB16(s1)});
}
return sLongFileName;
}

function CharCodeB10(fix_Unicode10){
return String.fromCharCode(fix_Unicode10);
}

function CharCodeB16(fix_Unicode16){
fix_Unicode16="0x"+fix_Unicode;
return String.fromCharCode(fix_Unicode16);
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
		alut=msgbox("�Ƿ�����Զ�������Ϣ" & vbcrlf & "(������ɼ�������վͼƬ�޷�����)",vbyesno)
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
</script>

<b style='color:#FF0000;'>��ȴ�ҳ��װ�����֮��������(��������ͼƬ������ȫ)</b><br/>
<b style='color:#FF0000;'>��ҳ�沿�ֹ���ֻ��IE������ɣ���ʹ��Internet Explorer�����ҳ</b><br/><br/>
<b><label><input name="A" type="radio" id="limit_albums" value="0" onClick="javascript:dl_all()" checked='checked'/>ʹ�����ع�������ȫ��</label>&nbsp;&nbsp;
<label><input name="A" type="radio" id="limit_albums" value="1" onClick="javascript:dl_ckeck()"/>ʹ�����ع������ز���</label>&nbsp;&nbsp;
<label><input name="A" type="radio" id="limit_albums" value="2" onClick="javascript:UBB_ckeck()"/>������̳��ǩ��������</label></b>
<div name="htm_str" id="htm_str"></div><script language='javascript'>dl_all()</script><hr/><b>�����ֱ��ʹ���Ҽ�������ȫ����</b><br /><br />