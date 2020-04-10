<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'zhuce_xinxi.jsp' starting page</title>
    
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
  String name=request.getParameter("name");
  name=new String(name.getBytes("iso8859-1"),"utf-8");  
  
  String password=request.getParameter("password");
  
  String xingbie=request.getParameter("sex");
   xingbie=new String(xingbie.getBytes("iso8859-1"),"utf-8");
   
  String zhuanye=request.getParameter("zhuanye");
   zhuanye=new String(zhuanye.getBytes("iso8859-1"),"utf-8");
   
  String[] xingqu=request.getParameterValues("xingqu");
  String str="";
  for(int i=0;i<xingqu.length;i++){
  		str=str+xingqu[i]+",";
  }
  
   str=new String(str.getBytes("iso8859-1"),"utf-8");
   
  String jianjie=request.getParameter("jianjie");
   jianjie=new String(jianjie.getBytes("iso8859-1"),"utf-8");
   
   String photo = request.getParameter("phtot");
   photo = new String (photo.getBytes("iso8859-1"),"utf-8");
   UserDao ud = new UserDao();
   ud.getConn();
   boolean flag = ud.findName(name);
   if(flag){
   		out.println("<3><center>该用户已注册，请换个用户名。重新注册！<center></h3>");
   		%>
   		<%@include file = "zhuce.jsp" %>
   		<% 
   }
  else{
  int i = ud.inseeUser(name,password,sex,zhuanye,str,jianjie.phtot);
  if(i>0){
   %>
  
  
  <h1 align="center"> 
    注册成功！</h1>
    <h3 align="center">你的信息如下：</h3>
    <h3 align="center">用户名：<%=name %></h3>
    <h3 align="center">密码： <%=password %></h3>
    <h3 align="center">性别：<%=xingbie %></h3>
    <h3 align="center">专业：<%=zhuanye %></h3>
    <h3 align="center">兴趣：<%=str %></h3>
    <h3 align="center">个人介绍：<%=jianjie %></h3><br>
    <%
    }
    else{
    out.println("<h3><center>注册失败，请重新注册！</center></h3>");
    %>
    <%@include file="zhuce.jsp" %>
    <%
    }
 }
     %>
  </body>
</html>
