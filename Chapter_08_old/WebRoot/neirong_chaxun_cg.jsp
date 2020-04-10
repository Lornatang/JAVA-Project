<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'neirong_chaxun_cg.jsp' starting page</title>
    
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
  <%@include file="lanmu_chaxun.jsp" %>
  <h3 align = "center">新闻内容列表
  </h3><table width ="200" border="1" align="center">
  <tbody><tr>
  <td>新闻ID</td>
  <td>新闻标题</td>
  <td>关键字</td>
  <td>栏目名称</td>
  <td>发布者</td>
  <td>发布时间</td>
  <td>内容简介</td>
  <td>新闻内容</td></tr>
   <%
  String newsname = request.getParameter("newsname");
  newsname = new String(newsname.getBytes("iso88959-1"),"utf-8");
  String titlename = request.getParameter("titlename");
  titlename = new String(titlename.getBytes("iso88959-1"),"utf-8");
  ContentDao us = new ContentDao();
  	us.getConn();
  	ResultSet rst = us.findNameAndTitleName(newsname,titlename);
  	while(rst.next()){
  	%>
  	<tr>
  	<td><%=rst.getInt(1) %></td>
  	<td><%=rst.getString(2) %></td>
  	<td><%=rst.getString(3) %></td>
  	<td><%=rst.getString(4) %></td>
  	<td><%=rst.getString(5) %></td>
  	<td><%=rst.getString(6) %></td>
  	<td><%=rst.getString(7) %></td>
  	<td><%=rst.getString(8) %></td>
  	</tr>
  	<%} %>
   </tbody>
   </table>
   <h3 align = "center"><a href = "index_neirong_chaxun.jsp">
  </body>
</html>
