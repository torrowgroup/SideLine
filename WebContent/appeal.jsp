<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
			<form
				action="${path}/LoginServlet?ask=appeal" method="post" target="_top">
				<p class="main">
					<lable>用户名:</lable>
					<input name="username" id="username" placeholder="请输入用户名" autocomplete><br>
					<br>${userPrompt}
				</p>
				 <input type="submit" value="找回密码">
			</form>
		</center>
</body>
</html>