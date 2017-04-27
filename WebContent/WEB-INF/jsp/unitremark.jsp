<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>${hirePrompt }</center>
	<form action="${path}/HireServlet?ask=unitremark&id=${id}" method="post">
		<textarea cols="20" rows="20" name="remark"></textarea>
		<input type="submit" value="提交">
	</form>
</body>
</html>