<%@page import="java.text.SimpleDateFormat"%>
<%@page import="io.ht.www.JDBC"%>
<%@page import="io.ht.www.UserBean"%>
<%@page import="io.ht.www.CommodityBean"%>
<%@page import="java.util.List"%>
<%@page import="io.ht.www.Comm"%>
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
     	Comm comm=new Comm();
     	
          /* List<UserBean>  list =jdbc.getList(); */
          
     %>
 
  <a><% String cname = request.getParameter("cname"); %></a>
  <%=cname %>
  <a><% String cprices= request.getParameter("cprice"); %></a>
  <%float cprice=Float.parseFloat(cprices); %>
  <%=cprice %>
  <a><% String cnumbers = request.getParameter("cnumber"); %></a>
    <%float cnumber=Float.parseFloat(cnumbers); %>
  <%=cnumber %>
  <a><% String  cquality = request.getParameter(" cquality"); %></a>
 
  <!-- SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
System.out.println(df.format(new Date()));// new Date()为获取当前系统时间 -->
  <%-- <a><% SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  	Date dat=new Date();
  	String date=df.format(dat);
   %></a>
  <%=date %> --%>
  <a><% String cimage = request.getParameter("cimage"); %></a>
  <%=cimage %>
  <%System.out.println(cimage); %>
   <%int i=comm.insert(cname, cprice, cnumber, cquality, cimage);
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
   <meta http-equiv="refresh" content="5; url=cmain.jsp">
  </body>
</html>