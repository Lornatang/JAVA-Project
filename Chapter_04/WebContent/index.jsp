<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP</title>
</head>
<body>
	<table align="center" border="0">
		<center>九九乘法表</center>
		<%
			for (int i = 1; i <= 9; i++) {
				if (i % 2 == 0) {
		%><tr bgcolor=#939393>
			<%
				} else {
			%>
		
		<tr bgcolor=#CC58A5>
			<%
				}
					for (int j = 1; j <= i; j++) {
			%>
			<td><%=j + " * " + i + " = " + (i * j) + "  "%>&nbsp;&nbsp;</td>
			<%
				}
				}
			%>
		</tr>
	</table>
</body>