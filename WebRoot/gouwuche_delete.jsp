<%@page import="io.ht.www.GouWuChe"%>
<%@page import="java.util.Map"%>
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
<title>Insert title here</title>
</head>
<body>
		<%
          Comm comm=new Comm();
        List<CommodityBean> list=comm.select();
    	CommodityBean bean=new  CommodityBean();
		%>
     <%String cid=request.getParameter("cid");
     int id=Integer.parseInt(cid);
  			bean=list.get(id-1);
      %>
      
  <%System.out.println("number:"+bean); %>
      <%Map<CommodityBean,Integer> map;
      GouWuChe che=GouWuChe.getInstance();
      map=GouWuChe.getMap();
       %>
     <%Object key=map.get(bean);
        System.out.println("map before:"+map);
         System.out.println("key before:"+key);
         
     map.remove(bean);
     System.out.println("map after:"+map); %>
     <jsp:forward page="gouwuche.jsp" >
                      <jsp:param name="" value=""/>
               </jsp:forward>
  <%--    <%if(username==null){ %>
     	
         <% }else{%>
    			<%session.invalidate(); %>
    			<jsp:forward page="gouwuche.jsp" >
                      <jsp:param name="username" value="<%=username %>"/>
               </jsp:forward>
     <% } %> --%>

</body>
</html>