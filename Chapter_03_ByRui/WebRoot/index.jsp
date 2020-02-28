<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
    <div align="center">
		<table border="1" width="800" height="800">
			<tr>
				<td colspan="2" height="150">
					<img src="images/daohangtiao.png">
				</td>
			</tr>
			<tr>
				<td width="200">
					<img src="images/cebian.png">
				</td>
				<td>
					<img src="images/zhuti.png">
				</td>
			</tr>
			<tr>
				<td colspan="2" height="150">
					<h3 align="center"><a href="login.jsp">登录</a></h3>
					<h3 align="center"><a href="registered.jsp">注册</a></h3>
				</td>
			</tr>
		</table>
	</div>
  </body>
</html>
