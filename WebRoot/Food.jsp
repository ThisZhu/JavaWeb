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
    
    <title>My JSP 'Food.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<meta charset="UTF-8">
	<title>Basic LinkButton - jQuery EasyUI Demo</title>
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
   <div  style="height:100%;width:100%"> 
   <div style="background:#0479A7;color:White;height:6%" align="center"> 
   <span style="color:GhostWhite" class="STYLE1">菜品管理</span>
   </div>
   <table style="background:White" height="5" width="100%" ><tr><td></td></tr> </table>
    <table style="width:100%;height:3%"><tr>
    <td style="width:7%;" ><a style="width:100%;" class="easyui-linkbutton"  align="right">添加</a></td>
    <td style="width:7%;" ><a style="width:100%;" class="easyui-menubutton" data-options="menu:'#mm3'" align="right">筛选</a></td>
     <td style="width:86%;" ></td>
    </tr></table>
    <div id="mm3" style="width:150px;">
    	<div id="4" onclick="changView(4)">全部</div>
		<div id="1" onclick="changView(1)">主食</div>
		<div id="2" onclick="changView(2)">酒水</div>
		<div id="3" onclick="changView(3)">甜品</div>
	</div>
    <%!int pageSize=4;
    int pageCount;
    int showPage; %>
    
    <%
    FlagBean flagbean=FlagBean.getInstance();
    String flag=flagbean.getFlag();
    if(flag==null){
    flag="0";
    }
    Connection con;
    Statement sql;
    ResultSet rs;
    try{Class.forName("com.mysql.jdbc.Driver"); 
    }catch(ClassNotFoundException e){}
      
      try{con=DriverManager.getConnection("jdbc:mysql://localhost:3306/msdb","root","1234");
      sql=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
       //返回可滚动的结果集 
        if(flag.equals("1")){
        rs=sql.executeQuery("select * from msdb.`food` where type='主食'");
        }else if(flag.equals("2")){
          rs=sql.executeQuery("select * from msdb.`food` where type='酒水'");
        }
        else if(flag.equals("3")){
          rs=sql.executeQuery("select * from msdb.`food` where type='甜品'");
        }else
        {
 		 rs=sql.executeQuery("select * from msdb.`food`");
 		}
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
 		 <table style="background:White" height="5" width="100%" ><tr><td></td></tr> </table>
 		<table  style="background:#ADD8E6"  width="100%" >
 		<tr>
 		<td><table border="0" width="100%"><tr><td width="25%">编号：<%=rs.getString("id") %></td><td width="20%">菜品名：<%=rs.getString("name") %></td><td >类型：<%=rs.getString("type") %></td><td width="20%"><img src=<%=rs.getString("url") %>></td><td width="10%"><a class="easyui-linkbutton" onclick="onEdit()">编辑</a></td><td width="10%"><a class="easyui-linkbutton" onclick="onEnsure()">删除</a></td></tr></table></td>
 		</tr>
 		<tr>
 		<td>描述：<%=rs.getString("decription") %></td>
 		</tr>
 		</table>

  <script >
  function  onEdit(){
 
    window.open("FoodEdit.jsp","newwindowfood","width=1000,height=500,top=50%,left=50%")

}

function onEnsure(){
if(window.confirm("确认删除？")){
       return true;
   }else{
       
       return false;
    }
}

function changView(b){
if(b==1){
$.ajax({ 
type: "Get",
url: "Food", 
data: {value:"1"} ,
success: function(data){ } 
}); 
}
else if(b==2){
$.ajax({ 
type: "Get",
url: "Food", 
data: {value:"2"} ,
success: function(data){ } 
}); 
}
else if(b==3){
$.ajax({ 
type: "Get",
url: "Food", 
data: {value:"3"} ,
success: function(data){ } 
}); 
}
else if(b==4){
$.ajax({ 
type: "Get",
url: "Food", 
data: {value:"4"} ,
success: function(data){ } 
}); 
}
window.location.replace("Food.jsp?showPage=1");
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
 <a href="Food.jsp?showPage=1">首页</a>
 <a href="Food.jsp?showPage=<%=showPage-1%>">上一页</a>
<% //根据pageCount的值显示每一页的数字并附加上相应的超链接
  for(int i=1;i<=pageCount;i++){
 %>
   <a href="Food.jsp?showPage=<%=i%>"><%=i%></a>
<% }
 %> 
 <a href="Food.jsp?showPage=<%=showPage+1%>">下一页</a>
 <a href="Food.jsp?showPage=<%=pageCount%>">末页</a>
 <!-- 通过表单提交用户想要显示的页数 -->
 <form action="" method="get">
  跳转到第<input type="text" name="showPage" size="4">页
  <input type="submit" name="submit" value="跳转">
 </form> 
 </td>
 </tr>
 </table>
 </div>
 </body>
</html>
