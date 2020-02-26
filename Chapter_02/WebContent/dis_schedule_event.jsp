<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String context_path = request.getContextPath();
	String base = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ context_path + "/";
%>

<html>
<head>
<base href="<%=base%>">

<title>This is the schedule of our program.</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

</head>

<body>
	<table width="700" height="100%" align="center">
		<tr>
			<td>
				<div align="center">
					<table id="table" border="1" cellpadding="5" cellspacing="0">

						<th width="100">节次</th>
						<th width="100">星期一</th>
						<th width="100">星期二</th>
						<th width="100">星期三</th>
						<th width="100">星期四</th>
						<th width="100">星期五</th>
						</tr>
						<tr>
							<td width="100">1-2</td>
							<td width="100">JSP</td>
							<td width="100">高等数学</td>
							<td width="100">HTML</td>
							<td width="100">&nbsp;</td>
							<td width="100">MySQL</td>
						</tr>
						<tr>
							<td width="100">3-4</td>
							<td width="100">Java程序设计</td>
							<td width="100">操作系统</td>
							<td width="100">&nbsp;</td>
							<td width="100">C#</td>
							<td width="100">&nbsp;</td>
						</tr>
						<tr>
							<td width="100">5-6</td>
							<td width="100">C语言程序设计</td>
							<td width="100">数据结构</td>
							<td width="100">&nbsp;</td>
							<td width="100">计算机组成原理</td>
							<td width="100"></td>
						</tr>
						<tr>
							<td width="100">7-8</td>
							<td width="100">&nbsp;</td>
							<td width="100">SQLServer</td>
							<td width="100">&nbsp;</td>
							<td width="100">Office</td>
							<td width="100">计算机网络</td>
						</tr>
					</table>
				</div>
			</td>
		</tr>
	</table>

</body>
</html>
