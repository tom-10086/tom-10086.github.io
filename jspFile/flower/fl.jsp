<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body background="../../images/a.jpg">

	<form action="../../Flower" method="post">
		<input type="text" name="searchName" placeholder="请输入生日日期，如2021-01-01 或01-01"/>
		<input type="submit" value="提交">
	</form>
	<br/>
	<form name="form" method="post" action="../../index.jsp">
            <input type="submit" value="返回小站主页">
	</form>

</body>
</html>