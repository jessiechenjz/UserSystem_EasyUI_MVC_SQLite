<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Index</title>
    <script src="../../Content/Easyui/jquery-1.8.0.min.js" type="text/javascript"></script>
    <script src="../../Content/Easyui/jquery.easyui.min.js" type="text/javascript"></script>
    <script src="../../Content/Easyui/easyui-lang-zh_CN.js" type="text/javascript"></script>
    <!--<link href="../../Content/Easyui/themes/black/easyui.css" rel="stylesheet" type="text/css" />-->
    <!--<link href="../../Content/Easyui/themes/metro/easyui.css" rel="stylesheet" type="text/css" />-->
    <!--<link href="../../Content/Easyui/themes/gray/easyui.css" rel="stylesheet" type="text/css" />-->
    <!--<link href="../../Content/Easyui/themes/bootstrap/easyui.css" rel="stylesheet" type="text/css" />-->
    <link href="../../Content/Easyui/themes/default/easyui.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/Easyui/themes/icon.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/Common/Login.js" type="text/javascript"></script>
    <script src="../../Scripts/Common/UserManage.js" type="text/javascript"></script>
</head>

<body class="easyui-layout">
<%//net代码
    UserSystem_EasyUI_MVC_SQLite.Model.UserManager userManage = Session["user"] as UserSystem_EasyUI_MVC_SQLite.Model.UserManager;
    
     %>
    <!--头部-->
	<div data-options="region:'north',border:false" style="height:40px;background:#0099CB;padding:5px; overflow:hidden">
	    <div style="float:left;">
        <img src="../../Scripts/QQ图片20150417202152.png" style="float:left;" />
        <label style="float:left;font-size:18px;margin-left:15px;margin-top:5px;">用户管理系统</label>
        </div>
        <div style="padding:5px;border:0px solid #ddd;float:right;" >
		    <a href="#" class="easyui-linkbutton" data-options="plain:true">Home</a>
		    <a href="#" class="easyui-menubutton" data-options="iconCls:'icon-edit'" onclick="logoff()">注销</a>
		    <a href="#" class="easyui-menubutton" data-options="menu:'#mm2',iconCls:'icon-help'">Help</a>
		    <a href="#" class="easyui-menubutton" data-options="menu:'#mm3'">About</a>
	    </div>
        
	<div id="mm2" style="width:100px;">
		<div>Help</div>
		<div>Update</div>
		<div>About</div>
	</div>
	<div id="mm3" class="menu-content" style="background:#f0f0f0;padding:10px;text-align:left">
		<img src="http://www.jeasyui.com/images/logo1.png" style="width:150px;height:50px">
		<p style="font-size:14px;color:#444;">Try jQuery EasyUI to build your modem, interactive, javascript applications.</p>
	</div>
    </div>
    <!--左边-->
    <div data-options="region:'west',split:true,title:'菜单栏'" style="width:250px;">
    <div class="easyui-accordion" data-options="fit:true">
      <div title="用户管理" data-options="iconCls:'icon-ok'" style="overflow:auto;padding:10px;">
			 <!--树-->
             <ul id="tt"></ul>  
     </div>
     <div title="系统设计" data-options="iconCls:'icon-ok'" style="overflow:auto;padding:10px;">
			 <ul id="Ul1"></ul>  
     </div>
     <div title="帮助" data-options="iconCls:'icon-ok'" style="overflow:auto;padding:10px;">
			 <ul id="Ul2"></ul>  
     </div>
    </div>
    </div>

    <!--底部-->
	<div data-options="region:'south',border:false" style="height:25px;background:#ccc;padding-left:10px; overflow:auto; vertical-align:middle"><%=userManage.Name.ToString()%>'s easyui+mvc demo</div>
	
    <!--中间-->
    <div data-options="region:'center'">
    <div id="tabs" class="easyui-tabs"  data-options="fit:true" style="width:500px;height:200px;">   
    <div title="首页" style="padding:20px;">   
        欢迎访问我的页面
    </div>   
   
</div> 
    </div>
    <script type="text/javascript">
        $('#tt').tree({
            url: '/Prim/Index',
            checkbox:true
        });
        $('#tt').tree({
            onClick: function (node) {
                //alert(node.attributes.url);  // alert node text property when clicked
                //添加tab
                $('#tabs').tabs('add', {
                    title: node.text,
                    iconCls:'icon-ok',
                    content: 'Tab Body',
                    href:node.attributes.url,
                    closable: true,          
                });  
            }
        });


    </script>
</body>
</html>
