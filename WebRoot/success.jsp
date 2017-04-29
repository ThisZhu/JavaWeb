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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <table width="100%" height="100%"><tr><td width="151" height="100%"border="1" cellpadding="0" cellspacing="0"
    >
    <table width="151" height="100%" border="1" cellpadding="0" cellspacing="0">
  <tr>
    <td height="28" style="background:Gray"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="19%">&nbsp;</td>
        <td width="81%" height="20" style=" font-size:15px"><span class="STYLE1">导航栏</span></td>
      </tr>
    </table></td>
  </tr>
  
  
  <tr>
    <td valign="top"><table width="151" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td  style="background:Gainsboro "  height="23"  id="imgmenu1" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(1)" onMouseOut="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="18%">&nbsp;</td>
                <td width="82%" class="STYLE1" style=" font-size:13px">个人信息</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td background="images/main_51.gif"  id="submenu1">
			 <div class="sec_menu" >  
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                
                
                  <tr>
                    <td width="16%" height="25"><div align="center"><img src="images/left.gif" width="10" height="10" /></div></td>
                    <td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td height="20" style=" font-size:13px" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="Mine.jsp" target="content" style="color:Black;text-decoration:none ">个人信息管理</a></span></td>
                        </tr>
                    </table></td>
                  </tr>
                 
             
            
                </table></td>
              </tr>
              <tr>
                <td height="5"><img src="images/main_52.gif" width="151" height="5" /></td>
              </tr>
            </table></div></td>
          </tr>
          
        </table></td>
      </tr>
      
      
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="23"  style="background:Gainsboro "  id="imgmenu2" class="menu_title" onmouseover="this.className='menu_title2';" onclick="showsubmenu(2)" onmouseout="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="18%">&nbsp;</td>
                  <td width="82%" class="STYLE1" style=" font-size:13px">菜品管理</td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td background="images/main_51.gif" id="submenu2"><div class="sec_menu" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                    
                    
                    
                        <tr>
                          <td width="16%" height="25"><div align="center"><img src="images/left.gif" width="10" height="10" /></div></td>
                          <td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td style=" font-size:13px" height="20"  onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'"  onmouseout="this.style.borderStyle='none'" ><span class="STYLE3"><a href="Food.jsp" target="content" style="color:Black;text-decoration:none ">菜品管理</a></span></td>
                              </tr>
                          </table></td>
                        </tr>
                        
                       
                       
                    </table></td>
                  </tr>
                  <tr>
                    <td height="5"><img src="images/main_52.gif" width="151" height="5" /></td>
                  </tr>
                </table>
            </div></td>
          </tr>
        </table>          </td>
      </tr>
      
      
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="23" style="background:Gainsboro "  id="imgmenu3" class="menu_title" onmouseover="this.className='menu_title2';" onclick="showsubmenu(3)" onmouseout="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="18%">&nbsp;</td>
                  <td width="82%" class="STYLE1" style=" font-size:13px">桌位管理</td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td background="images/main_51.gif" id="submenu3" style="DISPLAY: none"><div class="sec_menu" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                    
                    
                    
                        <tr>
                          <td width="16%" height="25"><div align="center"><img src="images/left.gif" width="10" height="10" /></div></td>
                          <td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td style=" font-size:13px" height="20"onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="Seat.jsp" target="content" style="color:Black;text-decoration:none ">桌位管理</a></span></td>
                              </tr>
                          </table></td>
                        </tr>
                        
                        
                    </table></td>
                  </tr>
                  <tr>
                    <td height="5"><img src="images/main_52.gif" width="151" height="5" /></td>
                  </tr>
                </table>
            </div></td>
          </tr>
          
          
        <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="23"  style="background:Gainsboro "  id="imgmenu4" class="menu_title" onmouseover="this.className='menu_title4';" onclick="showsubmenu(4)" onmouseout="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="18%">&nbsp;</td>
                  <td width="82%" class="STYLE1" style=" font-size:13px">订单管理</td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td background="images/main_51.gif" id="submenu4"><div class="sec_menu" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                    
                    
                    
                        <tr>
                          <td width="16%" height="25"><div align="center"><img src="images/left.gif" width="10" height="10" /></div></td>
                          <td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td style=" font-size:13px" height="20"  onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3' " onmouseout="this.style.borderStyle='none'" ><span class="STYLE3"><a href="SeatOrder.jsp" target="content" style="color:Black;text-decoration:none ">桌位订单管理</a></span></td>
                              </tr>
                          </table></td>
                        </tr>
                        
                         <tr>
                          <td width="16%" height="25"><div align="center"><img src="images/left.gif" width="10" height="10" /></div></td>
                          <td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td style=" font-size:13px" height="20"  onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3' " onmouseout="this.style.borderStyle='none'"  ><span class="STYLE3"><a href="FoodOrder.jsp" target="content" style="color:Black;text-decoration:none ">菜品订单管理</a></span></td>
                              </tr>
                          </table></td>
                        </tr>
                       
                       
                       
                    </table></td>
                  </tr>
                  <tr>
                    <td height="5"><img src="images/main_52.gif" width="151" height="5" /></td>
                  </tr>
                </table>
            </div></td>
          </tr>
        </table>          </td>
      </tr>
          
                     
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="23"  style="background:Gainsboro "  id="imgmenu5" class="menu_title" onmouseover="this.className='menu_title5';" onclick="showsubmenu(5)" onmouseout="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="18%">&nbsp;</td>
                  <td width="82%" class="STYLE1" style=" font-size:13px">评分管理</td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td background="images/main_51.gif" id="submenu5"><div class="sec_menu" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                    
                    
                    
                        <tr>
                          <td width="16%" height="25"><div align="center"><img src="images/left.gif" width="10" height="10" /></div></td>
                          <td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td  style=" font-size:13px" height="20"  onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'" onmouseout="this.style.borderStyle='none'" ><span class="STYLE3"> <a href="Review.jsp" target="content" style="color:Black;text-decoration:none ">评分管理</a></span></td>  <!-- text-decoration: none表示取消下划线 -->
                              </tr>
                          </table></td>
                        </tr>
                        
                       
                       
                    </table></td>
                  </tr>
                  <tr>
                    <td height="5"><img src="images/main_52.gif" width="151" height="5" /></td>
                  </tr>
                </table>
            </div></td>
          </tr>
        </table>          </td>
      </tr>
          
          
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="23"  style="background:Gainsboro "  id="imgmenu6" class="menu_title" onmouseover="this.className='menu_title6';" onclick="showsubmenu(6)" onmouseout="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="18%">&nbsp;</td>
                  <td width="82%" class="STYLE1" style=" font-size:13px">餐厅管理</td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td background="images/main_51.gif" id="submenu6"><div class="sec_menu" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                    
                    
                    
                        <tr>
                          <td width="16%" height="25"><div align="center"><img src="images/left.gif" width="10" height="10" /></div></td>
                          <td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td  style=" font-size:13px" height="20"  onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'" onmouseout="this.style.borderStyle='none'" ><span class="STYLE3"> <a href="Restaurant.jsp" target="content" style="color:Black;text-decoration:none ">餐厅管理</a></span></td>  <!-- text-decoration: none表示取消下划线 -->
                              </tr>
                          </table></td>
                        </tr>
                        
                       
                       
                    </table></td>
                  </tr>
                  <tr>
                    <td height="5"><img src="images/main_52.gif" width="151" height="5" /></td>
                  </tr>
                </table>
            </div></td>
          </tr>
        </table>          </td>
      </tr>
          
          
        </table></td>
      </tr>
    </table></td>
  </tr>
  

    <tr>
    <td height="18"  style="background:Gainsboro"><table width="100%" border="0" cellspacing="0" cellpadding="0">
       <tr>
          <td  align="center" style=" font-size:15px" height="18"  onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3' " onmouseout="this.style.borderStyle='none'" ><span class="STYLE3" onclick="signout()">退出登录</span></td>  
       </tr>
    </table></td>
  </tr>
  </tr>
  <tr>
    <td height="18"  style="background:Gray"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td  name="signout" valign="bottom" style=" font-size:15px" height="18" valign="bottom"><div align="center" class="STYLE3" >版本：2017V1.0</div></td>
      </tr>
    </table></td>
  </tr>
</table>
</td>

<script>
function showsubmenu(sid)
{
whichEl = eval("submenu" + sid);
imgmenu = eval("imgmenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
imgmenu.background="images/main_47.gif";
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
imgmenu.background="images/main_48.gif";
}
}

function signout(){
window.location = "login.jsp";
}
</script>
<td   width="90%" height="100%" border="1" cellpadding="0" cellspacing="0">
<iframe width="100%" height="100%"  name="content"/>
</td>
</tr></table>

  </body>
</html>