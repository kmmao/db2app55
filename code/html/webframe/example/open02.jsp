<%@ page contentType="text/html; charset=GBK"%>
<%@ include file="/webframe/common/commonhead.jsp"%>
<html>
<head>
<title>����ҳ��3</title>
<!--������DIV����ģ��ҳ��˵�� -->
<!--
1����ģ��Ϊʹ�õ���DIV���϶���͸�����������ص�jspҳ�棻
2����ģ����ѭ��������Ϊ�ٷֱȣ��߶���������Ȼ�ſ�ԭ������Ӧ���ֱַ��������
3��ʹ����������jsv2Ŀ¼�µ�openwin.js��topopenwin.js��
4���رռ�ˢ��/�����ϲ����ķ����ɲο�script�е�д����
 -->
</head>
<script type="text/javascript" src="<%=request.getContextPath()%>/jsv2/topopenwin.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/jsv2/openwin.js"></script>
<body>
<table width="98%" align="center" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <td width="220" valign="top">
<div class="area_tab">
<ai:tab id="ddd1" width="220" height="400" type="h">
	<ai:tabitem id="dd1" title="ͳ������" src="tab4.jsp" initial="true" />
	<ai:tabitem id="dd2" title="�շ�����" src="tab3.jsp" isDeletable="true"/>
</ai:tab>
</div>
</td>
<td width="10"></td>
<td valign="top" align="right">
<ai:contractframe id="�ͻ��޸��б�" contenttype="table" title="�ͻ��޸��б�" width="100%" allowcontract="false" frameclosed="false">
  <ai:contractitem/>
<ai:table setname="com.ai.frame.attach.SETSysAttach" tableid="spselect"  
        needrefresh="true" editable="ture" initial="true" multiselect="true"
          pagesize="10" width="100%" height="220" ondblink="">
          <ai:col fieldname="ATTACH_ID" width="105"/>
       		<ai:col fieldname="BUSI_SHEET_ID" width="150" />
       		<ai:col fieldname="BUSI_TYPE_CODE" width="200" />
       		<ai:col fieldname="REMARKS" width="160" />
       		<ai:col fieldname="NAME" width="160" />
           </ai:table>
</ai:contractframe>

<ai:contractframe id="�ͻ������޸�" contenttype="table" title="�ͻ������޸�" width="100%" allowcontract="false" frameclosed="false">
  <ai:contractitem/>
<table width="98%" align="center" border="0" cellpadding="1" cellspacing="2">
         <tr>
           <td class="td_font">�ͻ����ƣ�</td>
           <td><input type="text" class="input"  id="txtAccountName" style="width:150"/></td>
           <td class="td_font">��ϵ�绰��</td>
           <td><input type="text" class="input" id="txtAccountCode" style="width:150"/></td>
		</tr>
		<tr>
           <td class="td_font">�ͻ����ԣ�</td>
           <td><input type="text" class="input" id="txtKeyNum" style="width:150"/></td>
           <td class="td_font">��ϵ��ַ��</td>
           <td><input type="text" class="input"  id="txtAccountName" style="width:150"/></td>
		</tr>
		<tr>
           <td class="td_font">�������룺</td>
           <td><input type="text" class="input" id="txtAccountCode" style="width:150"/></td>
           <td class="td_font">��ע��</td>
           <td><input type="text" class="input" id="txtKeyNum" style="width:150"/></td>
		</tr>
      </table>
</ai:contractframe>
		</td>
	</tr>
</table>

<div class="area_button">
  <ai:button text="ȷ��" id="" onclick="query()" />&nbsp;&nbsp;
  <ai:button text="�ر�" id="" onclick="closeme()" />
</div>

</body>
</html>
<script language="javascript">
/*����DIV���ڹرշ���*/
function closeme(){
  ai.closePopup();
}
 
/*����DIV����ˢ�²��رշ���*/
 function query(){
 //parentWinΪ����������һ��
	var parentWin = ai.getOpener();
	if(parentWin != null)
		//Ϊ��һ������һ��table parentWin.addTable();
		//�����������ϼ�����  parentWin.test(param);
   //ˢ����һ��
   parentWin.location.reload();		

	//�رմ���
	ai.closePopup();
} 
 
</script>