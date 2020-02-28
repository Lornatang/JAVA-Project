<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String username = request.getParameter("username");
	String pwd = request.getParameter("pwd");
	String sex = request.getParameter("sex");
	String major = request.getParameter("major");
	String habit = request.getParameter("habit");
	String personalIntroduction = request.getParameter("personalIntroduction");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'registered_success.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

</head>

<body>
	<h1 align="center">Registered Success</h1>
	<h3 align="center">
		用户名：<%=username%></h3>
	<h3 align="center">
		密 码：<%=pwd%></h3>
	<h3 align="center">
		性 别：<%=sex%></h3>
	<h3 align="center">
		专 业：<%=major%></h3>
	<h3 align="center">
		兴 趣：<%=habit%></h3>
	<h3 align="center">
		个人简介：<%=personalIntroduction%></h3>
	<h4 align="center">
		<a href="login.jsp">登录</a>
	</h4>
	<h4 align="center">
		<a href="index.jsp">返回主页</a>
	</h4>
</body>
</html>
