<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>Chapter 05</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

</head>

<body>
	<%
		String attribute_num = (String) application.getAttribute("Num");
		int num = 1;
		if (attribute_num != null)
			num = Integer.parseInt(attribute_num) + 1;

		application.setAttribute("Num", String.valueOf(num));
	%>
	<br>
	<div align="center">
		当前在线人数是：<%=num%>人
</body>
</html>
