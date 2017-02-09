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
<title>添加商品</title>
<link rel="stylesheet" href="assets/css/amazeui.min.css">
  <link rel="stylesheet" href="assets/css/app.css">
</head>
		<%
          Comm comm=new Comm();
        //List<CommodityBean> list=comm.insert(cname, cprice, cnumber, cquality);
    
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
                                <%//if(!=){} %>
                                
                            </ul>
                            <!--头部小导航结束-->
                            <!-- logo -->  
                         </div>
             </div> 
        </div>
     </div> 
      <form action="cmain.jsp" method="post" class="am-form">
     <fieldset>
		商品名<input type="text" name="name" value="用户"><br>
		<br>
		价格<input type="text" name="sex" value="1">
		<br>
		数量<input type="text" name="name" value="用户"><br>
		生产日期
			<input id="birthday" type="text" class="am-form-field" placeholder="日历组件"
				 data-am-datepicker readonly required name="brithday" >	
		
	<br>
		图片地址<input type="image" name="username">
		<br>
    
  <!--   <input type="submit"value="提交" /> -->
     <p><button type="submit" class="am-btn am-btn-default">提交</button></p>
    </fieldset>
    
    </form>
    <!--[if (gte IE 9)|!(IE)]><!-->
<script src="assets/js/jquery.min.js"></script>
<!--<![endif]-->
<script src="assets/js/amazeui.min.js"></script>
    <script type="text/javascript">
    </script>