<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>UserManage</title> 
</head>
<body>
   <table id="dg" class="easyui-datagrid" 
			data-options="rownumbers:true,singleSelect:true,url:'/Account/LoadUser',toolbar:'#tb',fir:true,pagination:true,
				pageSize:10">
		<thead>
			<tr>
				<th data-options="field:'ID',width:80">用户ID</th>
				<th data-options="field:'Name',width:200">用户名</th>
				<th data-options="field:'Pwd',width:200,align:'left'">用户密码</th>
				<th data-options="field:'AddTime',width:200,align:'center'">添加时间</th>

			</tr>
		</thead>
	</table>
		<div id="tb" style="padding:5px;height:auto">
		<div style="margin-bottom:5px">
			<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true"></a>
			<a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true"></a>
			<a href="#" class="easyui-linkbutton" iconCls="icon-save" plain="true"></a>
			<a href="#" class="easyui-linkbutton" iconCls="icon-cut" plain="true"></a>
			<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true"></a>
		</div>
		<div>
			用户名: <input id="name" type="text" style="width:80px">
			密码: <input id="pwd" type="text" style="width:80px">
			技术: 
			<select id="tec" class="easyui-combobox" panelHeight="auto" style="width:100px">
				<option value="java">Java</option>
				<option value="c">C</option>
				<option value="basic">Basic</option>
				<option value="perl">Perl</option>
				<option value="python">Python</option>
			</select>
			<a href="#" class="easyui-linkbutton" iconCls="icon-search" onclick="AddUser();">添加</a>
		</div>
	</div>
</body>
</html>
