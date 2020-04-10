<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'zhuce.jsp' starting page</title>
    
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
    用户注册</h1><br><form method="post" action="zhuce.jsp">
    <table width="490" border="1" height="204" align="center">
<tbody><tr>
<td width="150"><h3>&nbsp;用户名：</h3></td>
<td>&nbsp;<input type="text" name="name"></td></tr>
<tr>
<td><h3>&nbsp;密码：</h3></td>
<td>&nbsp;<input type="password" name="password"></td></tr>
<tr>
<td><h3>&nbsp;性别：</h3></td>
<td>&nbsp;<input type="radio" value="男" name="sex">男
<input type="radio" value="女" name="sex">女</td></tr>
<tr>
<td><h3>&nbsp;兴趣：</h3></td>
<td>&nbsp;<input type="checkbox" value="编程" name="xingqu">编程
<input type="checkbox" value="读书" name="xingqu">读书
<input type="checkbox" value="运动" name="xingqu">运动
<input type="checkbox" value="旅游" name="xingqu">旅游

</td></tr>
<tr>
<td><h3>&nbsp;专业：</h3></td>
<td>&nbsp;<select size="1" name="zhuanye">
<option value="计算机应用">计算机应用</option>
<option value="大数据">大数据</option>
<option value="移动互联">移动互联</option>
<option value="软件应用">软件应用</option>
</select>
</td></tr>
<tr>
<td><h3>&nbsp;个人简介：</h3></td>
<td>&nbsp;<textarea cols="20" rows="8" name="jianjie">我喜欢JSP
</textarea></td></tr>
<tr>
<td><h3>&nbsp;个人照：</h3></td>
<td>&nbsp;<input type ="file"name = "photo"></td></tr>
<tr>
<td colspan="2" align="center">&nbsp;<input type="submit" value="注册" name="button4"><input type="reset" value="取消" name="button5"></td>
</tr>
</tbody></table>
    
</form><br>
 <h3 align="center"><a href="index.jsp">返回主页</a></h3>
  </body>
</html>
