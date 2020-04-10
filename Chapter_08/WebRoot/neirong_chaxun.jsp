<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'neirong_chaxun.jsp' starting page</title>
    
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
  <%
 	lanmuDao lan = new lanmuDao();
 	lan.getConn();
 	ResultSet rs = lan.findAll();
 	List<String> list = new ArrayList<String>();
 	while(rs.next()){
 		list.add(rs.getString(2));
 	}
   %>
   <h3 align = "center">
   查询条件</h3><from metod = "post" action="index_neirong_chaxun_cg.jsp">
   <table width = "500" border="1" align="center">
   <tbody><tr>
   <td>&nbsp;新闻名称</td>
   <td><input type = "text" name = "newsname"><br></td></tr>
   <tr>
   <td>&nbsp;新闻关键字</td>
   <td><input type = "text" name = "keyword"><br></td></tr>
   <tr>
    <td>&nbsp;新闻所属栏目</td>
    <td>
    <select name ="titlename" id = "titlename">
    <%
    for(int i = 0;i<list.size();i++){
    	String names = (String)list.size(i);
    %>
    <option value = "<%=names%> "><%=names %></option>
    <% 
    }
    %>
    </select>
   </td></tr>
   <tr><td colspan="2" align="center">&nbsp;<input type = "submit" value = "查询" name = "button1">
   <input type = "reset" value = "清空" name = "button2"></td></tr>
   </tbody></table>
   		</from><br><br>
  </body>
</html>
