<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'neirong_list.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    </h3><table width ="200" border="1" align="center">
  <tbody><tr>
  <td>新闻ID</td>
  <td>新闻标题</td>
  <td>关键字</td>
  <td>栏目名称</td>
  <td>发布者</td>
  <td>发布时间</td>
  <td>内容简介</td>
  <td>新闻内容</td>
  <%
   ContentDao us = new  ContentDao();
  	us.getConn();
  	ResultSet rs = us.findAll();
  	while(rs.next()){
  	%>
  	<tr>
  	<td><%=rs.getInt(1) %></td>
  	<td><%=rs.getString(2) %></td>
  	<td><%=rs.getString(3) %></td>
  	<td><%=rs.getString(4) %></td>
  	<td><%=rs.getString(5) %></td>
  	<td><%=rs.getString(6) %></td>
  	<td><%=rs.getString(7) %></td>
  	<td><%=rs.getString(8) %></td>
  	
  	</tr>
  	<%} %>
  </body>
</html>
