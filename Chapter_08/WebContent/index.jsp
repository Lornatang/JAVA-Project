<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<style type="text/css">
.bigbiaoti {
	font-family: Verdana, Geneva, sans-serif;
	font-size: 24px;
	font-weight: bolder;
}
.smallbiaoti {
	font-family: Verdana, Geneva, sans-serif;
	font-size: 18px;
	font-weight: bold;
}
.banquan {
	font-family: Verdana, Geneva, sans-serif;
	font-size: 14px;
	font-weight: normal;
	font-style: italic;
	background-color: #F1747A;
	text-align: center;
}
</style>
  </head>
  
  <body>
  <table width="1000" height="701" border="1">
  <tr>
    <td height="150" colspan="2"><img src="image/top.jpg" width="1000" height="150" /></td>
  </tr>
  <tr>
    <td width="280" height="50" class="bigbiaoti"><img src="image/big.png" width="20" height="20" />新闻发布后台管理</td>
    <td width="720" rowspan="4"><img src="image/welcome.jpg" width="720" height="506" /></td>
  </tr>
  <tr>
    <td height="50"><span class="smallbiaoti"><img src="image/small.jpg" width="25" height="25" /><a href="yiji.jsp">新闻一级栏目发布</a></span></td>
  </tr>
  <tr>
    <td height="50"><span class="smallbiaoti"><img src="image/small.jpg" alt="" width="25" height="25" />新闻标题及内容发布</span></td>
  </tr>
  <tr>
    <td height="347">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2" class="banquan">版权信息：计算机17级</td>
  </tr>
</table>
  </body>
</html>
