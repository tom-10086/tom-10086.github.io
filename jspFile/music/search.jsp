<%@page import="com.yx.entity.Music"%>
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
		<form action="search" method="post">
			<input type="hidden" name="page" id="page" />
			<input type="text" name="searchName" value="<%=request.getAttribute("searchName") %>" placeholder="请输入要查询的歌曲或歌手信息"/>
			<input type="submit" value="提交">
		</form>
		
		<br/>
			<form name="form" method="post" action="index.jsp">
		            <input type="submit" value="返回小站主页">
			</form>
			
		<br/>
		<audio src="" id="myplay" controls="controls" autoplay></audio>
	</div>
	
	<br/>
	<br/>
	<br/>
	
	<div align="center">
	<%String pages = request.getAttribute("page").toString();
	
	if(pages.equals("1")){
		
	%>
		<a href="javascript:sub(<%=Integer.valueOf(pages)+1 %>);">下一页</a>
	<%
	}else {
	%>
		<a href="javascript:sub(<%=Integer.valueOf(pages)-1 %>);">上一页</a>
		<a href="javascript:sub(<%=Integer.valueOf(pages)+1 %>);">下一页</a>
	<%	
		
	}
	
	%>
	
	</div>
	<br/>
	<br/>
	<br/>
	<table align="center">
	
		<% if(request.getAttribute("list")!=null) {
				ArrayList<Music> list = (ArrayList)request.getAttribute("list");
				
				for(Music music:list) {
					%>
					<tr>
					<td><img alt="" src="<%=music.getPic()%>" width="150" height="150"></td>
					<td><%=music.getMname() %></td>
					<td><%=music.getSingername() %></td>
					<!-- <td><audio src="<%=music.getMp3url()%>" controls="controls"></audio></td> -->
					<td><a href="javascript:getMp3url('<%=music.getRid()%>')">播放</a></td>
					<input type="hidden" id="<%=music.getRid()%>" value=""  />
					</tr>
					
					<%
				}
			
		}
			
			%>
	</table>
</body>

<script type="text/javascript">
	function getMp3url(e) {
		
		if($("#"+e).val()=="") {
			// 在这里把rid传到后台去 查询出这首歌的真实播放地址 然后进行播放
			//ajax,无刷新提交？
			$.ajax({
				url: "search",
				data: {"rid": e},
				type: "GET",
				success: function(responseData) {
					// 这里的responseData参数为服务器传回来的值
					//alert(responseData);
					$("#"+e).val(responseData);
					$("#myplay").attr("src",responseData);
				}		
			});
		}else {
			$("#myplay").attr("src",$("#"+e).val());
		}
	}
	
	function sub(d) {
		
		$("#page").val(d);
		$("form").submit();
	}

</script>

</html>