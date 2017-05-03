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
    
    <title>My JSP 'SeatOrder.jsp' starting page</title>
    
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
 		 rs=sql.executeQuery("select * from msdb.`order` where food_pay_status='true'");
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
 		
 	<table style="background:#ADD8E6" width="100%" height="10%" border="1" cellpadding="0" cellspacing="0" align="center">
    <tr width="100%" height="2" > 
    <td>
    <table width="100%" >
    <tr>
     <td width="25%" align="left">用户：<%=rs.getString("phone") %></td>
     <td width="25%" align="left">桌位：<%=rs.getString("seat_name") %></td>
      <td width="25%" colspan="3" align="left">支付时间：<%=rs.getString("seat_pay_time") %></td>
      <td width="25%" align="left">订单审核状态：<input height="2" align="right" type="button" name="button" value="<%=(rs.getString("seat_status").equals("true")?"已审核":"去审核") %>" onclick=" var b=ensure(this.value) ;this.value=b"></td>
      </tr>
      </table>
      </td>
    </tr>
   <tr width="100%" height="2"> 
    <td>
    <table width="100%" >
    <tr>
     <td width="50%" align="left">人数：<%=rs.getString("people_count") %></td>
      <td  width="50%" align="40">用餐时间：<%=rs.getString("time_detail") %></td>
      </tr>
      </table>
      </td>
    </tr>
    
     <tr width="100%" height="2"> 
    <td>
    <table width="100%" >
    <tr>
     <td width="50%" align="left">总价格：<%=rs.getString("seat_price") %></td>
      <td width="50%" colspan="3" align="left">审核通过时间：<%=(rs.getString("food_accept_time")==null?"无":rs.getString("food_accept_time")) %></td>
     
      </tr>
      </table>
      </td>
    </tr>
    
    <tr width="100%" > 
     <td align="left">备注：<%=(rs.getString("seat_decription")==null?"无":rs.getString("seat_decription")) %></td>
   </table>
  <table width="100%" height="2%"> <tr><td></td></tr> </table>
  <script >
  function  ensure(b){
  if(b=="已审核"){
  alert("已审核，不能再审")  ;
  return "已审核";
  }
  else{
  if(window.confirm("确认订单？")){
       return "已审核";
   }else{
       
       return "未审核";
    }
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
 <td>
 <br>
    第<%=showPage %>页（共<%=pageCount %>页）
 <br>
 <a href="SeatOrder.jsp?showPage=1">首页</a>
 <a href="SeatOrder.jsp?showPage=<%=showPage-1%>">上一页</a>
<% //根据pageCount的值显示每一页的数字并附加上相应的超链接
  for(int i=1;i<=pageCount;i++){
 %>
   <a href="SeatOrder.jsp?showPage=<%=i%>"><%=i%></a>
<% }
 %> 
 <a href="SeatOrder.jsp?showPage=<%=showPage+1%>">下一页</a>
 <a href="SeatOrder.jsp?showPage=<%=pageCount%>">末页</a>
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
