<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="servlet.AccountBean"%>    
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!-- 简单的静态网页的话你设置比如:<base href="http://www.baidu.com">,那你下面的href属性就会以你上面设的为基准,
如:<a href="http://www.baidu.com/xxx.htm"></a>你现在就只需要写<a href="xxx.htm"></a>
-->
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'success.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<meta charset="UTF-8">
    <title>Basic Accordion - jQuery EasyUI Demo</title>
    <link rel="stylesheet" type="text/css" href="themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="themes/icon.css">
    <link rel="stylesheet" type="text/css" href="demo.css">
    <script type="text/javascript" src="jquery.min.js"></script>
    <script type="text/javascript" src="jquery.easyui.min.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body style="margin:0px;padding:0px">
    <table width="100%" height="100%"><tr><td width="151" height="100%" cellpadding="0" cellspacing="0"
    >
    <table width="151" height="100%"  cellpadding="0" cellspacing="0">
  <tr>
    <td height="6%" style="background:#0479A7"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="19%">&nbsp;</td>
        <td width="81%" height="20" style=" font-size:15px"><span style="color:GhostWhite" class="STYLE1">导航栏</span></td>
      </tr>
    </table></td>
  </tr>
  
  
          
      <tr height="90%">
      <td> <div class="easyui-accordion" style="width:100%;height:100%"> 
       <div title="桌位管理" style="padding:10px;">
        <ul  class="easyui-tree"> <li><a href="Seat.jsp" target="content" style="text-decoration : none;color:#0479A7 ">桌位管理</a></li></ul>
       </div>
       
       <div title="菜品管理" style="padding:10px;">
        <ul  class="easyui-tree"> <li><a href="Food.jsp" target="content" style="text-decoration : none;color:#0479A7 ">菜品管理</a></li></ul>
       </div>
       
       <div title="订单管理" style="padding:10px;">
        <ul  class="easyui-tree"> 
        <li><a href="SeatOrder.jsp" target="content" style="text-decoration : none;color:#0479A7 ">桌位订单管理</a></li>
        <li><a href="FoodOrder.jsp" target="content" style="text-decoration : none;color:#0479A7 ">菜品订单管理</a></li>
        </ul>
       </div>
       
       <div title="餐厅管理" style="padding:10px;">
        <ul  class="easyui-tree"> <li><a href="Restaurant.jsp" target="content" style="text-decoration : none;color:#0479A7 ">餐厅管理</a></li></ul>
       </div>
       
       <div title="评分管理" style="padding:10px;">
        <ul  class="easyui-tree"> <li><a href="Review.jsp" target="content" style="text-decoration : none;color:#0479A7 ">评分管理</a></li></ul>
       </div>
       
       <div title="个人信息管理" >
       <ul  class="easyui-tree"> <li><a href="Mine.jsp" target="content" style="text-decoration : none;color:#0479A7 ">个人信息管理</a></li></ul>
       </div>
       </div></td>
      </tr>    
 

    <tr>
    <td height="2%"  style="background:Gainsboro"><table width="100%" border="0" cellspacing="0" cellpadding="0">
       <tr>
          <td  align="center" style=" font-size:15px" height="18" ><input weight="100%" type="button"  name="button" value="退出登录" onclick="signout()"></td>  
       </tr>
    </table></td>
  </tr>
  </tr>
  <tr>
    <td height="2%"  style="background:#0479A7"><table width="100%"  cellspacing="0" cellpadding="0">
      <tr>
        <td  name="signout" valign="bottom" style=" font-size:15px" height="18" valign="bottom"><div align="center" class="STYLE3" >版本：2017V1.0</div></td>
      </tr>
    </table></td>
  </tr>
</table>
</td>

<script>
function signout(){
window.location = "login.jsp";
}
</script>
<td   width="90%" height="100%" cellpadding="0" cellspacing="0">
<iframe  frameborder="no" width="100%" height="100%"  name="content"/>
</td>
</tr></table>

  </body>
</html>