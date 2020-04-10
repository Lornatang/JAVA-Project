<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'denglu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body><h1 align="center"> 
    用户登录</h1><br><form method="post" action="denglu_success.jsp"><p>&nbsp;<br></p>
    <table width="466" border="1" height="72" align="center">
<tbody><tr>
<td><h3>&nbsp;用户名：</h3></td>
<td>&nbsp;<input type="text" name="name"></td></tr>
<tr>
<td><h3>&nbsp;密码：</h3></td>
<td>&nbsp;<input type="password" name="mima"></td></tr>
<tr>
<td colspan="2" align="center">&nbsp;<input type="submit" value="登录" name="button1"><input type="reset" value="取消" name="button2"></td>
</tr>
</tbody></table><p> 
  </p></form><h4 align="center">
 
  <a href="zhuce.jsp">5秒后自动跳转到新用户注册</a>
  </h4>
  <% 
  response.setHeader("refresh","5;URL=zhuce.jsp");
  %>
  </body>
</html>
