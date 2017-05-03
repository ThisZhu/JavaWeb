<%@ page language="java" import="java.util.*" import="servlet.FlagBean" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'FoodEdit.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<meta charset="UTF-8">
	<title>Basic FileBox - jQuery EasyUI Demo</title>
	<link rel="stylesheet" type="text/css" href="themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="themes/icon.css">
	<link rel="stylesheet" type="text/css" href="demo.css">
	<script type="text/javascript" src="jquery.min.js"></script>
	<script type="text/javascript" src="jquery.easyui.min.js"></script>
  </head>
  
  <body style="margin:0px;padding:0px">
	<div class="easyui-panel" title="菜品添加" style="width:100%;height:100%;padding:30px 70px 50px 70px">
		 <%
    FlagBean flagbean=FlagBean.getInstance();
    Connection con;
    Statement sql;
    ResultSet rs;
    PreparedStatement pstmt ;
    int id=flagbean.getId();
    if(id==0)
   {
    id=1;
   }
    try{Class.forName("com.mysql.jdbc.Driver"); 
    }catch(ClassNotFoundException e){}
      
      try{con=DriverManager.getConnection("jdbc:mysql://localhost:3306/msdb","root","1234");
         //sql=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
         String Sql="select * from msdb.`food` where id=?";
       //返回可滚动的结果集 
         pstmt = con.prepareStatement(Sql);
         pstmt.setInt(1, id);
         rs=pstmt.executeQuery();
 		 rs.last();
 		%>
		<div style="margin-bottom:20px">
			<div>菜品名:</div>
			<input class="easyui-textbox" value="<%=rs.getString("name")%>" style="width:100%">
		</div>
		<div style="margin-bottom:20px">
			<div>类型:</div>
			<select class="easyui-combobox"   style="width:100%"><option value="主食">主食</option><option value="酒水">酒水</option><option value="甜品">甜品</option></select>
		</div>
		<div style="margin-bottom:20px">
			<div>描述:</div>
			<input class="easyui-textbox" value="<%=rs.getString("decription")%>" style="width:100%">
		</div>
		<div style="margin-bottom:20px">
			<div>图片:</div>
			<input class="easyui-filebox" name="file2" data-options="prompt:'选择图片...'" style="width:100%">
		</div>
		<div>
			<table style="width:100%;"><tr>
			<td style="width:50%"><a class="easyui-linkbutton"  style="width:30%" align="center" onclick="closeview()">取消</a></td>
			<td style="width:50%"><a class="easyui-linkbutton"  style="width:30%" align="center" onclick="closeview()">确定</a></td>
			</tr>
		</table>
		</div>
		  <%
     rs.close();
  con.close();
  }
  catch(Exception e){
  e.printStackTrace();}
 %>
	</div>
	<script>
    function closeview(){
    window.close()
    }
    </script>
</body>
</html>
