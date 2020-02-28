<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String context = request.getContextPath();
	String path = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ context + "/";
%>

<html>
<head>
<base href="<%=path%>">

<title>Welcome to my home.</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

</head>

<body>
	<
	<h1 align="center">用户登录</h1>
	<form name="" action="backend.jsp" method="post">
		<div align="center">
			<table border="1">
				<tr>
					<td width="100"><h3>用户名</h3></td>
					<td width="100"><input type="text" name="userName"></td>
				</tr>
				<tr>
					<td width="100"><h3>密码</h3></td>
					<td width="100"><input type="password" name="pwd"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="登录"
						name="login"> <input type="reset" value="取消"></td>
				</tr>
			</table>
			<h4>
				<a href="registered.jsp">新用户注册</a>
			</h4>
		</div>
	</form>
</body>
</html>
