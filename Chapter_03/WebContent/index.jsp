<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
	String context = request.getContextPath();
	String path = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ context + "/";
%>

<html>
<head>
<base href="<%=path%>">

<title>My JSP website starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

</head>

<body>
	<div align="center">
		<table border="1" width="800" height="800">
			<tr>
				<td colspan="2" height="150"><img src="static/navigation_bar.png">
				</td>
			</tr>
			<tr>
				<td width="200"><img src="static/news.png"></td>
				<td><img src="static/theme.png"></td>
			</tr>
			<tr>
				<td colspan="2" height="150">
					<h3 align="center">
						<a href="login.jsp">登录</a>
					</h3>
					<h3 align="center">
						<a href="registered.jsp">注册</a>
					</h3>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>
