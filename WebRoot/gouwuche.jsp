<%@page import="io.ht.www.GouWuChe"%>
<%@page import="java.util.concurrent.ConcurrentHashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
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
<title>购物车</title>
<link rel="stylesheet" href="assets/css/amazeui.min.css">
  <link rel="stylesheet" href="assets/css/app.css">
</head>
		<%
          Comm comm=new Comm();
          List<CommodityBean> list=comm.select();
        
		%>
		<%String username=(String)session.getAttribute("username");
		 String cid=request.getParameter("cid");
		 String number=request.getParameter("number");
		 
		 %>
		  <%if(username==null){%>
     		<jsp:forward page="login.jsp">
                      <jsp:param name="username" value=""/>
               </jsp:forward>
    <% }else{%>
     <%=username %>你好！
    			<br> <a href="back.jsp">退出</a>
    
     <% } %>
     <div class="wrapper">
        <div class="header">
            <div class="header_container">
                <!--头部开始-->
                        <div class="top_bar clear">
                            <!--头部小导航-->
                            <div class="welcom fl">欢迎光临LEISUPET SHOP! <% %> </div>
                            <ul class="top_links fr">
                                <li class="highlight"><a href="cmain.jsp">首页</a></li>
                                <li><a href="userau.jsp">我的账户</a></li>
                                <li><a href="gouwuche.jsp">购物车</a></li>
                                <li><a href="gouwuche.jsp">注册</a></li>
                                <li><a href="mai.jsp">卖</a></li>
                                <li ><a href="login.jsp">登录</a></li>
                            </ul>
                            <!--头部小导航结束-->
                            <!-- logo -->  
                         </div>
             </div> 
        </div>
     </div>
		  <%if(cid==null){
     		
     }else{%>
     <%if(number==null){
     
     
      %>
		 <%}else{
     
     int num=Integer.parseInt(number);
     int id;
     id=Integer.parseInt(cid);
      %>
     <%CommodityBean commodity=comm.selectByCommodityBean(id);
       %>
  		
     <%Map<CommodityBean,Integer> map;
     GouWuChe che=GouWuChe.getInstance();
     map=GouWuChe.getMap();
      %> 
      <%if(map.get(commodity)==null){%><% 
     	 map.put(commodity, num);
     	 map.keySet();
     	 %>
      	<div class="am-g">
		 	<div class="am-u-sm-6">
 				<%=map.keySet() %>
 				
				</div>		
  				</div> 
 		<div class="am-g">
		 	<div class="am-u-sm-6">
 				商品：<%=map.size() %><% %>
 				</div>
			</div>
      <%}else{%>
      			<%num=map.get(commodity)+1;
      			 map.put(commodity, num);
     	 		map.keySet();
      			 %>	
     		<% }%>
       
	<%} } %>
	 <%Map<CommodityBean,Integer> map;
     GouWuChe che=GouWuChe.getInstance();
     map=GouWuChe.getMap();
     int x=1;
    
      %>
     商品：<%=map.size() %>
        <%for(CommodityBean key:map.keySet()){ %>
       
		 <div class="am-g">
		 <div class="am-u-sm-6">
 				商品：<%=key %>
 				
			</div>	
			 <div class="am-u-sm-3">
 				
 				<%=map.get(key) %>
 				
			</div>
			<div class="am-u-sm-3">
 				
 				<a href="gouwuche_delete.jsp?cid=<%=key.getCid() %>">删除</a>
 				
			</div>
			</div>
		 <%} %>
<body>

</body>
</html>