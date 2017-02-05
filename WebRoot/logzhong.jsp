<%@page import="io.ht.www.UserBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%
     	io.ht.www.JDBC jdbc =new io.ht.www.JDBC();
     	  
     %>
     <%
     String username=request.getParameter("username");
     session.setAttribute("username", username);
     //System.out.println("idStr:  "+username); %>
      <%
     String password=request.getParameter("password");
      %>
     <br>
     <%UserBean userBean=jdbc.selectByusername(username); %>
     <%if(userBean==null) {%>
    
     	 		<jsp:forward page="login.jsp">
                      <jsp:param name="username" value="flue！"/>
               </jsp:forward>
               <% %>
     	
     <%}else{ %>
     	<%if(userBean.getPassword().equals(password)){%>
     			登陆成功！自动跳转中......
     			<% %>
     			 <meta http-equiv="refresh" content="3; url=cmain.jsp" >
     			<%-- <jsp:forward page="cmain.jsp" >
                      <jsp:param name="username" value="<%=username %>"/>
               </jsp:forward> --%>
     		<% }else{%>
     			<jsp:forward page="login.jsp">

                      <jsp:param name="password" value="flue!"/>
               </jsp:forward>
     		<%} %>
     <%} %>
</body>
</html>