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
				action="${path}/LoginServlet?ask=answer" method="post" target="_top">
				<p class="main">
					<lable>问题:</lable>
					<input name="security" id="security" value="${security}"><br>
					<br>
					<lable>答案:</lable>
					<input name="answer" id="answer" placeholder="请输入答案" value="${answer}" autocomplete><br>
					<br>${userPrompt}
				</p>
				 <input type="submit" value="找回密码">
			</form>
		</center>
</body>
</html>