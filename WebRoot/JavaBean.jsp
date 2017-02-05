
<%@page import="io.ht.www.JDBC"%>
<%@page import="io.ht.www.UserBean"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="javax.print.attribute.DateTimeSyntax"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

   <jsp:useBean id="tt" class="io.ht.www.Hentee" scope="page"></jsp:useBean>
   <jsp:useBean id="user" class="io.ht.www.UserBean" scope="page"></jsp:useBean>
   
   <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" href="index.css">
	
  <body>
    <h2><%!
    String str1="sfds1javabean方法";
    String str2="不是吗？"; 
     %>
     <%!
   
    Date birthday=new Date(2009-1900,3-1,9,5,06,8);
    Date date=new Date();
   
    
     %>
     <%
     	io.ht.www.JDBC jdbc =new io.ht.www.JDBC();
          List<UserBean>  list =jdbc.getList();
          
     %>
     
      <table class="table">
      <tr>
  	<th>编号</th>
    <th>用户</th>
    <th>性别</th>
    <th>出生日期</th>	
    <th>日期</th>	
    <th>用户名</th>
    <th>操作</th>
    </tr>
      
     <%for(int i=0;i<list.size();i++) { %>
      <tr>
     <%UserBean userBean=list.get(i); %><td>
     
     <%=userBean.getId() %></td><td>
     <%=userBean.getName() %></td><td>
     <%=userBean.getSex() %></td><td>
     <%=userBean.getBirthday() %></td><td>
    
     <%SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
     Date date=userBean.getDate();
     String str=sdf.format(date);
     
     %>
     <%=str%></td><td>
     <%=userBean.getUsername() %></td>
     <td ><a href="update.jsp?id=<%=userBean.getId() %>&name=<%=userBean.getName() %>&sex=<%=userBean.getSex() %>
     &birthday=<%=userBean.getBirthday() %> ">编辑
    
     </a><a href="deSuces.jsp?id=<%=userBean.getId() %> ">删除</a>  </td>
      </tr> <% } %>  
     </table>
     <div class="sd">
     	
    	<a  href="add.jsp"><button type="button" class="btn btn-default btn-lg" >
  			 添加
		</button></a>
	</div>
  </body>

