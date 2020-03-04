<<<<<<< HEAD
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
<head>

<title>九九乘法表</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>

<body>
	<div align="center">
		<table border=1>
		<center>九九乘法表</center>
			<%for(int i = 1; i < 10; i++) {%>
			<tr>
				<%for(int j = 1; j <= i; j++) {%>
				<td bgcolor="gray"><%=j %> * <%=i %> = <%=i*j %></td>
				<%} %>
				<%for(int k = i + 1; k < 10; k++) {%>
				<td bgcolor="purple"><%=k %> * <%=i %> = <%=k*i %></td>
				<%} %>
			</tr>
			<%} %>
		</table>
	</div>
</body>
</html>
=======
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
>>>>>>> master
