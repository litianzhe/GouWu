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
<link rel="stylesheet" href="assets/css/amazeui.min.css">
  <link rel="stylesheet" href="assets/css/app.css">
</head>
		<%
          Comm comm=new Comm();
        List<CommodityBean> list=comm.select();
    
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
                                <li><a href="gouwuche.jsp">购物车</a></li>
                                <li><a href="#">注册</a></li>
                                <li><a href="mai.jsp">卖</a></li>
                                <li ><a href="login.jsp">登录</a></li>
                            </ul>
                            <!--头部小导航结束-->
                            <!-- logo -->  
                         </div>
             </div> 
        </div>
     </div> 
 
  <%
  	int y=list.size()%4;
    int x=list.size()/4;
  %>
    
   <% 	for(int i=0;i<list.size()/4;i++){  %>
     <div class="am-g">
     	<%
     		for(int j=0;j<4;j++){
     	%>
  			<div class="am-u-sm-3">
 				<% CommodityBean commodity=list.get(4*i+j);%>
  				 <img alt="0" src="<%=commodity.getCimage()%>" ><br>
     				<a href="NewFile.jsp?cid=<%=commodity.getCid() %>"> <%=commodity.getCname()%>升级版女装<%=commodity.getCid()%> </a><br>
     				价格：Y <%=commodity.getCprice()%>  销量<%=commodity.getCnumber()%>     <%=commodity.getCquality()%> 
			</div>
			<%	}%>  	
	</div>
     <%} %> 
     <div class="am-g">
     	<%for(int j=4*x;j<y+4*x;j++){%>
  			<div class="am-u-sm-3">
 				<%CommodityBean commodity=list.get(j);%>
  				 <img alt="0" src="<%=commodity.getCimage() %>"><br>
     				<a href="NewFile.jsp?cid=<%=commodity.getCid() %>"> <%=commodity.getCname() %>升级版女装<%=commodity.getCid() %> </a><br>
     				价格：Y <%=commodity.getCprice() %>  销量<%=commodity.getCnumber() %>    <%=commodity.getCquality() %> 
			</div>
			<%} %>  	
	</div>
            
<body>

</body>
</html>