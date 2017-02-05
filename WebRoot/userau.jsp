<%@page import="io.ht.www.JDBC"%>
<%@page import="io.ht.www.UserBean"%>
<%@page import="io.ht.www.CommodityBean"%>
<%@page import="java.util.List"%>
<%@page import="io.ht.www.Comm"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的账户</title>
</head>
<body>
		<%-- <%
          Comm comm=new Comm();
            
        List<CommodityBean> list=comm.select();
    
		%> --%>
     <%String username=(String)session.getAttribute("username");
     //session.setAttribute("username", username);
      %>
     <%=username %>
     <%if(username==null) {%>
    		
     	 		<jsp:forward page="login.jsp">
                      <jsp:param name="username" value=""/>
               </jsp:forward>
               <% %>
     	
     <%}else{ %>
     	
     <%} %>
     	<div class="wrapper">
        <div class="header">
            <div class="header_container">
                <!--头部开始-->
                        <div class="top_bar clear">
                            <!--头部小导航-->
                            <div class="welcom fl">欢迎光临LEISUPET SHOP! <% %> </div>
                            <ul class="top_links fr">
                                <li class="highlight"><a href="cmain.jsp">首页</a></li>
                                <li><a href="userau">我的账户</a></li>
                                <li><a href="#">购物车</a></li>                             
                            </ul>
                            <!--头部小导航结束-->
                            <!-- logo -->  
                         </div>
             </div> 
        </div>
     </div> 
		<div>			
                           <dd  >       					
        						<a href="#">我的账户</a>
        						<ul class="mt-menu-sub-content">
         						<li id="invoiceList"> <a href="#" >账号信息</a> </li>
          						<li><a href="#" >账号管理</a></li>
          						
        						</ul>
      						</dd>
                            <dd  >       					
        						<a href="#">我的购物车</a>
        						<ul class="mt-menu-sub-content">
         						<li id="invoiceList"> <a href="#" >购物车信息</a> </li>
          						<li><a href="#" >购物车管理</a></li>
          						
        						</ul>
      						</dd>
		</div>		


</body>
</html>