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
 
  </head>
  
  <body>
   <%
     	io.ht.www.JDBC jdbc =new io.ht.www.JDBC();
     %>
      <!-- String id=request.getParameter("id"); -->
  <a><% String idStr=request.getParameter("id");
 
  int id = Integer.parseInt(idStr); 
 %></a>
  <%=id %>

  <%System.out.println(id); %>
  <%int i=jdbc.delete(id);
    System.out.println("删除   : "+
        i);
     %> 
 <meta http-equiv="refresh" content="5; url=JavaBean.jsp">
  </body>
</html>