<%@page import="io.ht.www.*"%>
<%@page import="java.util.*"%>
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
          Comm comm=new Comm();
        List<CommodityBean> list=comm.select();
    		io.ht.www.JDBC jdbc =new io.ht.www.JDBC();
		%>
     <%String username=(String)session.getAttribute("username");
     //session.setAttribute("username", username);
      %>
      <%UserBean userBean=jdbc.selectByusername(username); %>
      <%=userBean.getId() 
      
      %>
     <% %>
    <%--  <%if(username==null){ %>
     	<jsp:forward page="cmain.jsp" >
                      <jsp:param name="username" value="<%=username %>"/>
               </jsp:forward>
         <% }else{%>
     
    			<%session.invalidate(); %>
    			<jsp:forward page="cmain.jsp" >
                      <jsp:param name="username" value="<%=username %>"/>
               </jsp:forward>
     
     <% } %> --%>
 
</body>
</html>