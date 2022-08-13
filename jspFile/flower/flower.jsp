<%@page import="com.renwen.test.FlowerData"%>
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
<body background="images/b.jpg">

		<div align="center">
			<form action="Flower" method="post">
				<input type="text" name="searchName" placeholder="请输入生日日期，如2021-01-01 或01-01"/>
				<input type="submit" value="提交">
			</form>
			<br/>
			
			<br/>
			<form name="form" method="post" action="index.jsp">
		            <input type="submit" value="返回小站主页">
			</form>
		</div>

	<table align="center">
	
		<% if(request.getAttribute("fd")!=null) {
				
				FlowerData fd = (FlowerData)request.getAttribute("fd");
				
				
					%>
					<tr>
					
					
					<p>标题:<%=fd.getTitle() %></p>
					<p>生日:<%=fd.getBirthday() %></p>
					<p>生日花:<%=fd.getName() %></p>
					<p>生日花含义:<%=fd.getName_des() %></p>
					<p>花语:<%=fd.getLang() %></p>
					<p>花语含义:<%=fd.getLang_des() %></p>
				
					</tr>
					
					<%
				
			
		}
			
			%>
	</table>

</body>
</html>