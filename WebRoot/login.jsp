<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    <!-- meta是html语言head区的一个辅助性标签 -->
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
     <form action="login">
     <table style="width:250;height:250"align="center" border="1" >
     <tr><td style="background:Gray;color:GhostWhite;height:100 " " align="center"> <h1 >商家登录</h3></td></tr>
     <tr><td>
     <table  border="1" cellpadding="0" cellspacing="0" align="center">
        <tr>
            <td  background="images/main_58.gif" style=" font-size:13px"> 用户名:</td>
            <td  ><input style="background:GhostWhite " type="text" name="username" value="yourname" onfocus="if (this.value=='yourname')this.value=''"><br></td>
         </tr>
         <tr>
             <td  background="images/main_58.gif"  style="font-size:13px">密码:</td>
             <td  ><input style="background:GhostWhite;width:100% " type="password" name="pwd" value="password" onfocus="if (this.value=='password')this.value=''"><br></td>
          </tr>
    </table>
    <table align="center"  >
     <tr ><td><input  style="background:SpringGreen; width:150" type="submit" name="submit" value="登录"></td></tr>
    </table>
    </td>
    </tr>
    </table>
    </form>
  </body>
</html>

<!-- 
1、请求转发（RequestDispatcher）的过程：
         客户首先发送一个请求到服务器端，服务器端发现匹配的servlet，并指定它去执行，当这个servlet执行完之后它要调用getRequestDispacther()方法，
         把请求转发给指定的test.jsp,整个流程都是在服务器端完成的，而且是在同一个请求里面完成的，因此servlet和jsp共享的是同一个request，在servlet
         里面放的所有东西，在jsp中都能取出来，因此，jsp能把结果getAttribute()出来，getAttribute()出来后执行完把结果返回给客户端。整个过程是一
         个请求，一个响应。

2、重定向（sendRedirect）的工作原理：
             客户发送一个请求到服务器，服务器匹配servlet，这都和请求转发一样，servlet处理完之后调用了sendRedirect()这个方法，这个方法是response
             的方法，所以，当这个servlet处理完之后，看到response.senRedirect()方法，立即向客户端返回这个响应，响应行告诉客户端你必须要再发送一个
             请求，去访问test.jsp，紧接着客户端受到这个请求后，立刻发出一个新的请求，去请求test.jsp,这里两个请求互不干扰，相互独立，在前面request
             里面setAttribute()的任何东西，在后面的request里面都获得不了。可见，在sendRedirect()里面是两个请求，两个响应。        
      -->