<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
		function reloadCode(){
			var time=new Date().getTime();
			document.getElementById("imagecode").src="<%=request.getContextPath()%>/ImageServlet?d="+time;
	}
</script>
</head>
<body>
	<center>
			<form action="${path}/LoginServlet?ask=login" method="post" target="_top" onsubmit="return check()">
				<p class="main">
					<lable>用户名:</lable>
					<input name="username" id="username" placeholder="请输入用户名" autocomplete><br>
					<br>
					<lable>密&nbsp;&nbsp;&nbsp;码:</lable>
					<input type="password" name="password" id="password" placeholder="请输入密码" size="18"><br>
					<br>
					<lable>验证码:</lable>
					<input type="text" name="checkcode" id="checkcode"><br>${userPrompt}
				</p>
				<img alt="验证码" id="imagecode"
					src="${path}/ImageServlet">
				<a href="javascript:reloadCode();">看不清楚</a><br>
				 <input type="submit" value="登录">
				 <a href="appeal.jsp">找回密码</a>
			</form>
		</center>
		<center>
			<form action="${path}/ResisterServlet" method="post" target="_top">
				<p class="main">
					<lable>用户名:</lable>
					<input name="username" id="username" placeholder="请输入用户名" autocomplete><br>
					<br>
					<lable>密&nbsp;&nbsp;&nbsp;码:</lable>
					<input type="password" name="password" id="password" placeholder="请输入密码" size="18"><br>
					<br>
				</p>
				 <input type="submit" value="注册">
			</form>
		</center>
</body>
</html>