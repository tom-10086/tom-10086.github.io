<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body background="../../images/b.jpg">
	<form action="../../search" method="post">
		<input type="text" name="searchName" placeholder="请输入要查询的歌曲或歌手信息"/>
		<input type="submit" value="提交">
	</form>
	
	<br/>
	<form name="form" method="post" action="../../index.jsp">
            <input type="submit" value="返回小站主页">
	</form>
	
</body>
</html>