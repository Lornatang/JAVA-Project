<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String context = request.getContextPath();
	String path = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ context + "/";
%>

<html>
<head>
<base href="<%=path%>">
<title>My JSP 'backend.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


</head>

<body>
	Welcome to  my JSP page.
	<br>
</body>
</html>
