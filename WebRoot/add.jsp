<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="io.ht.www.JDBC"%>
<%@page import="io.ht.www.UserBean"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
  
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	
  <link rel="stylesheet" href="assets/css/amazeui.min.css">
  <link rel="stylesheet" href="assets/css/app.css">

  </head>
  
  <body>
   <%
     	io.ht.www.JDBC jdbc =new io.ht.www.JDBC();
     	
          /* List<UserBean>  list =jdbc.getList(); */
          
     %>
    <form action="index.jsp" method="post" class="am-form">
     <fieldset>
		用户<input type="text" name="name" value="用户"><br>
		<br>
		性别<input type="radio" name="sex" value="1">男
		<input type="radio" name="sex" value="0">女
		<br>
		出生日期
			<input id="birthday" type="text" class="am-form-field" placeholder="日历组件"
				 data-am-datepicker readonly required name="brithday" >	
		
	<br>
		用户名<input type="text" name="username">
		<br>
    
     <p><button type="submit" class="am-btn am-btn-default">提交</button></p>
    </fieldset>
    
    </form>
    <!--[if (gte IE 9)|!(IE)]><!-->
<script src="assets/js/jquery.min.js"></script>
<!--<![endif]-->
<script src="assets/js/amazeui.min.js"></script>
    <script type="text/javascript">
    </script>

  </body>
</html>
