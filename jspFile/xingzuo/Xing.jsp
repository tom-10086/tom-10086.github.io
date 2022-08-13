<%@page import="com.juhe.xingzuo.XingData"%>
<%@page import="java.util.ArrayList"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
<body bgcolor="#00ff99">

	<form action="Xing" method="post">
		<input type="text" name="searchName" placeholder="请输入	查找日期或星座名称：如1900年起始 2021-01-01 或 金牛(座)、水瓶(座)"/>
		<input type="submit" value="提交">
	</form>
	
	<br/>
			<form name="form" method="post" action="index.jsp">
		            <input type="submit" value="返回小站主页">
			</form>
	
	<table align="center">
	
		<% if(request.getAttribute("xd")!=null) {
				
				XingData xd = (XingData)request.getAttribute("xd");
				
				
					%>
					<tr>
					
				
					<p>星座名称：<%=xd.getName() %></p>
					<p>特点：<%=xd.getZxtd() %></p>
					<p>属性：<%=xd.getSssx() %></p>
					<p>基本特质：<%=xd.getJbtz() %></p>
					<p>总体评价：<%=xd.getZj() %></p>
				
					</tr>
					
					<%
				
			
		}
			
			%>
	</table>

</body>
</html>