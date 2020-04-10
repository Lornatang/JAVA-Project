<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'neirong_success.jsp' starting page</title>
    
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
 <%
  String name = request.getParameter("name");
  name = new String(name.getBytes("iso88959-1"),"utf-8");
  String creator = request.getParameter("creator");
  creator = new String(creator.getBytes("iso88959-1"),"utf-8");
  String creatorDate = request.getParameter("creatorDate");
  creatorDate = new String(creatorDate.getBytes("iso88959-1"),"utf-8");
    String name = request.getParameter("name");
  name = new String(name.getBytes("iso88959-1"),"utf-8");
  String creator = request.getParameter("creator");
  creator = new String(creator.getBytes("iso88959-1"),"utf-8");
  String creatorDate = request.getParameter("creatorDate");
  creatorDate = new String(creatorDate.getBytes("iso88959-1"),"utf-8");
  lanmuDao md = new lanmuDao();
  	md.getConn();
  	boolean flag = 	md.findByName(name);
  	if(flag){
  		out.println("<h3><center>该栏目已存在，请重新添加！</center></h3>");
  		%>
  		<%@include file = "lanmu.jsp" %>
  		<%
  		}
  		else{
  			int i =md.insertLanmu(name.creator,creatofDate);
  			if(i>0){
  			%>
  				<h1 align = "center">发布成功！</h1>
  						<h3 align = "center">你的信息如下：</h3>
  						<h3 align = "center">栏目名称：<%=name%></h3>
  						<h3 align = "center">发布者：<%=creator%></h3>
  						<h3 align = "center">发布时间：<%=ctreatorDate%></h3>
  						<h3 align = "center">栏目名称：<%=name%></h3>
  						<h3 align = "center">发布者：<%=creator%></h3>
  						<h3 align = "center">发布时间：<%=ctreatorDate%></h3>
  						<h3 align = "center">栏目名称：<%=name%></h3>
  						<h3 align = "center">发布者：<%=creator%></h3>
  						<h3 align = "center">发布时间：<%=ctreatorDate%></h3>
  						<h1 align = "center">
  						<%@include file="lanmu_list.jsp" %>
  						<h1 align = "center"><a href="index_lanmu.jsp">返回</a></h1>
  				<%
  				}
  				else{
  					out.println("<h3><center>发布失败，请重新发布！！！</center></h3>");
  					%>
  					<%@include file ="lanmu.jsp"%>
  					<%
  				}
  			} 
 }
  	%>
  </body>
</html>
