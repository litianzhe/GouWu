<%@page import="java.util.HashMap"%>
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
<title>买</title>
<link rel="stylesheet" href="assets/css/amazeui.min.css">
  <link rel="stylesheet" href="assets/css/app.css">
</head>
		<%
          Comm comm=new Comm();
        //  CommodityBean bean=(String)request.getAttribute("cid");
          List<CommodityBean> list=comm.select();
        //List<CommodityBean> list=comm.update();
   
		%>
     <%
     String cid=request.getParameter("cid");
     //session.setAttribute("cid", cid);
     int id;
     id=Integer.parseInt(cid);
    %>
      
      <%CommodityBean commodity=comm.selectByCommodityBean(id);
      System.out.println("idStr:  "+commodity);
       %>
         <%String username=(String)session.getAttribute("username");
     //session.setAttribute("username", username);
      %>
     <%if(username==null){
     
     }else{%>
     <%=username %>
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
                                <li><a href="#">购物车</a></li>
                                <li><a href="#">注册</a></li>
                                <li ><a href="login.jsp">登录</a></li>
                            </ul>
                            <!--头部小导航结束-->
                            <!-- logo -->  
                         </div>
             </div> 
        </div>
     </div> 
 
     <div class="am-g">
     <div class="am-u-sm-2">
 				
  			
			</div>	
  			<div class="am-u-sm-6">
 				
  				 <img alt="0" src="<%=commodity.getCimage()%>">
     		
			</div>	
			<div class="am-u-sm-3">
  						<form action="gouwuche.jsp" method="post">
     				<a> <%=commodity.getCname()%>升级版女装<%=commodity.getCid()%> </a><br>
     				价格：Y <%=commodity.getCprice()%><br> 
     				<input type="text" > 
     				库存<%=commodity.getCnumber()%><br> 
     				日期：  <%=commodity.getCquality()%> <br> 
     				<% %>
     				 <input type="hidden" name="cid" value="<%=commodity.getCid()%>" >
     				 <input type="hidden" name="number" value="1" >
     				<input type="submit" value="添加购物车">
     				
     				</form>
			<br><br>
			</div>
			
			<div class="am-u-sm-1">
 				
  				
     		
			</div>	
				
	</div>
   
    
<body>

</body>
</html>