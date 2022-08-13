<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body {   
            background: url("images/body.png");   
            font-size: 14px;   
    }
	table {   
            width: 981px;   
            border: 0px;   
            margin: 0px auto;   
    }   
   	tr {   
    	width: 100%;   
    }   
    td {   
    	padding: 0px;   
    }
</style>
</head>

<body>
	<!--top部分-->
	<table>
		<tr height="130">  
	    	<td background="images/aa.jpg" width="581" valign="top">  
	                     
	       	</td>  
	    </tr>
		<!--middle部分--> 
		<tr height="620">  
        	<td bgcolor="#E0FFFF">  
        		<table>  
                	<tr height="620">
                		<br />
							<marquee><font color="red"><h1>欢迎来到fun小站！！！</h1><br /></font></marquee>
                		</br>
                		
                		<div style="line-height:150%;"><b style="background-color:#98FB98; color: blue;">|小站简介|</b></div>
                		<hr width="120" align="left" style="border: double #00FFFF"/>  
						
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;欢迎光临fun小站！<br/>
						在这里你可以听听歌，体验一些小应用。٩(๑>◡<๑)۶ <br/>
                        <hr style="border: double #00FFFF" />
                        
                        <div style="line-height:150%;"><b style="background-color:#98FB98; color: blue;">|应用导航|</b>
                        </div><hr width="120" align="left" style="border: double #00FFFF"/>  
                                
                                
                 		<p>听听音乐吧！点击"听听歌"！</p>
	                 		<form name="form" method="post" action="jspFile/music/music.jsp">
	            				<input type="submit" value="听听歌">
							</form>	
						
						
						<p>在这里你可以查查星座！(输入查找日期或星座名称：如1900年起始 2021-01-01 或 金牛(座)、水瓶(座))</p>
							<form name="form" method="post" action="jspFile/xingzuo/x.jsp">
           						<input type="submit" value="星座">
							</form>
						
						
						<p>在这里你可以根据生日日期（如2021-01-01 或01-01），查查生日花语！</p>
							<form name="form" method="post" action="jspFile/flower/fl.jsp">
            					<input type="submit" value="生日花语">
							</form>
						
								
                 		              	
                	</tr>
                </table>
             </td>
      	</tr>				
	</table>
	

</body>
</html>