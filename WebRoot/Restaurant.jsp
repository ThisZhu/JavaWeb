<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Restaurant.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
    <body style="margin:0px;padding:0px">
   <table style="margin:0px;padding:0px" width="100%" height="100%" >
   <tr  style="width:100%;height:3%"><td>
    <table width="100%" height="100%" ><tr><td style="background:Gray;height:100%">
    <h2 style="text-align:center;color:White;vertical-align:miiddle" height="100%">餐厅管理</h2>
    </td></tr> </table>
    </td>
    </tr>
    <!--  -->
    <tr style="width:100%;height:4%">
    <td >
    <table border="1" style="width:100%;height:100%">
    <tr style="width:100%;height:50%"a valign="top"> 
    	 <td style="width:20%;text-align:right">餐厅名称 ：</td>
    		<td style="width:30%;text-align:center">我的餐厅</td>
    			<td style="width:20%;text-align:right">地址：</td>
    				<td style="width:30%;text-align:center">广西桂林电子科技大学</td>
    </tr>
    <tr style="width:100%;height:50%" valign="top"> 
     <td style="width:20%;text-align:right">电话 ：</td>
    		<td style="width:30%;text-align:center">15296800012</td>
    			<td style="width:20%;text-align:right">营业时间：</td>
    				<td style="width:30%;text-align:center">周一到周六，每天中午10:00~下午21:00</td>
    </tr>
    </table>
    </td>
    </tr>
    
     <tr style="width:100%;height:20%">
       <td > 
       <table border="1" style="width:100%;height:100%">
       <tr>
         <td style="width:20%;text-align:right">餐厅描述：</td>
          <td style="width:80%;text-align:left">撒大声地撒多撒多大所多</td>
       </tr>
       </table>
       </td>
     </tr>
     <tr style="width:100%;height:3%">
     <td></td>
     </tr>
      <tr style="width:100%;height:1%">
     <td align="middle" valign="center"><input  type="button" name="button" value="编辑" onclick="editview()"></td>
     </tr>
      <tr style="width:100%;height:69%">
     <td></td>
     </tr>
    </table>
    <script>
    function editview(){
    window.open("restaurantEdit.jsp","newwindow","width=1000,height=500,top=50%,left=50%")
    }
    </script>
  </body>
</html>
