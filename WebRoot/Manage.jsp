<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Manage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	
  </head >
  <jsp:useBean id="uu" class="io.ht.www.UserBean" scope="page">
  <body>
  <button type="button" class="btn btn-default" aria-label="Left Align">
  <span class="glyphicon glyphicon-align-left" aria-hidden="true"></span>
</button>
<div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">Panel heading</div>
  <div class="panel-body">
    <p>...</p>
  </div>
    
     </h2>
  <!-- Table -->
  <table class="table">
  
  <tr>
  	<th>编号</th>
    <th>用户</th>
    <th>性别</th>
    <th>出生日期</th>	
    <th>日期</th>	
    </tr>
   <%for(int i=0;i<100;i++){ %>
    <tr>
    <td>002</td>
    <td>小 黑</td>
    <td>男</td>
    <td>2017.01.11</td>
    <td>2017.01.11</td>
    </tr>
    <%} %>
   
  </table>
</div>

    <br>
  
  </body>
  </jsp:useBean>
</html>
