<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<style type="text/css">
td {
	width: 200px;
}
</style>
<base href="<%=basePath%>">

<title>My JSP 'registered.jsp' starting page</title>

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
	<form action="registered_success.jsp">
		<div align="center">
			<table border="1">
				<tr>
					<td><h3>用户名</h3></td>
					<td><input type="text"></td>
				</tr>
				<tr>
					<td><h3>密码</h3></td>
					<td><input type="password"></td>
				</tr>
				<tr>
					<td><h3>性别</h3></td>
					<td><input type="radio" name="sex" value="male">男 <input
						type="radio" name="sex" value="femail">女</td>
				</tr>
				<tr>
					<td><h3>专业</h3></td>
					<td><input type="text" name="major"></td>
				</tr>
				<tr>
					<td><h3>兴趣</h3></td>
					<td><input type="text" name="habit"></td>
				</tr>
				<tr>
					<td><h3>个人简介</h3></td>
					<td><input type="text" name="personalIntroduction"></td>
				</tr>
				<tr>
					<td><h3>个人照片</h3></td>
					<td></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						name="registered" value="注册"> <input type="reset"
						value="取消"></td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>
