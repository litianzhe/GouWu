<%@page import="io.ht.www.UserBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		
		<form action="logzhong.jsp" method="post">
			<div>
				<div>用戶名： <input type="text" name="username"> 	<%
      	 	String usename=request.getParameter("username");
       		if(usename!=null){
        	out.println(usename);}
      			%></div>		
				<div>password:<input type="password" name="password" ><%
       		String password=request.getParameter("password");
       		if(password!=null){
        	out.println(password);}
      			%>  </div>
			</div>
			<input type="submit" value="登陸">
		</form>
	
</body>
</html>