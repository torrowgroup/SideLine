<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="form" action="${path}/UserServlet?ask=updateuser&id=${list.id}" method="post"> 
	               	账户名:<input name="username" value="${list.username}" readonly="readonly">
	               	密&nbsp&nbsp&nbsp&nbsp码:<input name="password" value="${list.password}"><br>
	               	姓&nbsp&nbsp&nbsp&nbsp名:<input name="name" value="${list.name}">
	               	手机号:<input name="phone" value="${list.phone}"><br>
	               	性&nbsp&nbsp&nbsp&nbsp别:<input name="sex" value="${list.sex}">
	               	年&nbsp&nbsp&nbsp&nbsp龄:<input name="age" value="${list.age}"><br>
	               	地&nbsp&nbsp&nbsp&nbsp址:<input name="location" value="${list.location}">
	               	密&nbsp&nbsp&nbsp&nbsp保:<input name="security" value="${list.security}"><br>
	               	答&nbsp&nbsp&nbsp&nbsp案:<input name="answer" value="${list.answer}">
	               <input type="submit" value="修改">
	           </form>
</body>
</html>