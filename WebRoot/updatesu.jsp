<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
   <%
     	io.ht.www.JDBC jdbc =new io.ht.www.JDBC();
     	
          /* List<UserBean>  list =jdbc.getList(); */
          
     %>
  <a><% String idStr = (String)session.getAttribute("id"); 
 
  int id = Integer.parseInt(idStr); 
 %></a>
  <%=id %>
  <a><% String name = request.getParameter("name"); %></a>
  <%=name %>
  <a><% String sex = request.getParameter("sex"); %></a>
  <%=sex %>
  <a><% String birthday = request.getParameter("brithday"); %></a>
  <%=birthday %>
  <a><% String user = request.getParameter("username"); %></a>
  <%=user %>
  <%System.out.println(user); %>
  <%if(name.equals("")||true){%>
  <% session.setAttribute("name", name); %>
  	<%System.out.println("不能为空！！"); %>
  <% }
  else{
  }
   %>
  
  <%int i=jdbc.update(id, name, sex, birthday, user);
    System.out.println("dfdkjfdkdfff  dsf g"+
        i);
     %> 
  	<%if(i==1){
  	
  	
  	 %>
   成功 
   <%}else{
  	 %>
   <%String str="失败"; %>
   <%=str %>
   <%} %> 
   <meta http-equiv="refresh" content="5; url=JavaBean.jsp">
  </body>
</html>
