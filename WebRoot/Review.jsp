<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Review.jsp' starting page</title>
    
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
    <%!int pageSize=4;
    int pageCount;
    int showPage; %>
    
    <%
    Connection con;
    Statement sql;
    ResultSet rs;
    try{Class.forName("com.mysql.jdbc.Driver"); 
    }catch(ClassNotFoundException e){}
      
      try{con=DriverManager.getConnection("jdbc:mysql://localhost:3306/msdb","root","1234");
      sql=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
       //返回可滚动的结果集 
 		 rs=sql.executeQuery("select * from review");
 		 //将游标移到最后一行 
 		 rs.last();
 		 //获取最后一行的行号 
 		 int recordCount=rs.getRow();
		  //计算分页后的总数 
		  pageCount=(recordCount%pageSize==0)?(recordCount/pageSize):(recordCount/pageSize+1);
		  //获取用户想要显示的页数：
		  String integer=request.getParameter("showPage");
 		 if(integer==null){
		   integer="1";
		  }
		  try{showPage=Integer.parseInt(integer);
 		 }catch(NumberFormatException e){
 		  showPage=1;
		  }
		  if(showPage<=1){
		   showPage=1;
 		 }
 		 if(showPage>=pageCount){
 		  showPage=pageCount;
 		 }
  		 int position=(showPage-1)*pageSize+1;
  			//设置游标的位置
 		 rs.absolute(position);
 		 //设置最后一页的记录数
 		 int repageSize;
 		 if(showPage==pageCount){
 		 repageSize=recordCount-4*(pageCount-1);
 		 }
 		 else{
 		  repageSize=4;
 		 }

 		 //用for循环显示本页中应显示的的记录
		 for(int i=1;i<=repageSize;i++){  
		 
 		%>
 		
 	<table width="100%" height="10%" border="1" cellpadding="0" cellspacing="0" align="center">
    <tr width="100%" height="2"> 
    <td>
    <table width="100%" >
    <tr>
     <td width="25%" align="left">用户：<%=rs.getString("phone_id") %></td>
     <td width="25%" align="left">评星：<%=rs.getString("stars") %></td>
      <td width="25%" colspan="3" align="left"><textarea>日期：<%=rs.getString("time") %></textarea></td>
      <td width="25%" align="left">点赞美食：<%=rs.getString("good_food") %></td>
      </tr>
      </table>
      </td>
    </tr>
    <tr width="100%" > 
     <th align="left">评价：<%=rs.getString("details") %></th>
    </tr>
    <tr width="100%" > 
     <th align="left">回复：<%=(rs.getString("reply")==null?"":rs.getString("reply")) %></th>
    </tr>
     <tr width="100%" ><td><input height="2" align="right" type="button" name="button" value="<%=(rs.getString("reply")==null?"回复":"已经回复") %>" onclick="var a=<%=rs.getString("reply")%>;reply(a)"> </td></tr>
      <tr width="100%" height="2"> </tr>
      
   </table>
    <table width="100%" height="3%"  style="background:Gainsboro" > <tr><td></td></tr> </table>
 <script>
 function reply(b){
 if(b==null)
 {
  prompt("请输入您的回复","")
 }
 }
 </script>
 <%  
   rs.next();
   } 
  rs.close();
  con.close();
  }
  catch(Exception e){
  e.printStackTrace();}
 %>
 
 <table align="center" valign="bottom" >
 <tr>
 <td></td>
 </tr>
 <tr>
 <td>
 <br>
    第<%=showPage %>页（共<%=pageCount %>页）
 <br>
 <a href="Review.jsp?showPage=1">首页</a>
 <a href="Review.jsp?showPage=<%=showPage-1%>">上一页</a>
<% //根据pageCount的值显示每一页的数字并附加上相应的超链接
  for(int i=1;i<=pageCount;i++){
 %>
   <a href="Review.jsp?showPage=<%=i%>"><%=i%></a>
<% }
 %> 
 <a href="Review.jsp?showPage=<%=showPage+1%>">下一页</a>
 <a href="Review.jsp?showPage=<%=pageCount%>">末页</a>
 <!-- 通过表单提交用户想要显示的页数 -->
 <form action="" method="get">
  跳转到第<input type="text" name="showPage" size="4">页
  <input type="submit" name="submit" value="跳转">
 </form> 
 </td>
 </tr>
 </table>
  </body>
</html>
