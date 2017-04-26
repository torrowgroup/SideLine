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
	<form name="form" action="${path}/ManagerServlet?ask=updatemanager&id=${manlist.id}" method="post"> 
	              账户名:<input name="username" value="${manlist.username}" readonly="readonly"><br>
	              密&nbsp&nbsp&nbsp&nbsp码:<input name="password" value="${manlist.password}"><br>
	              手机号:<input name="phone" value="${manlist.phone}"><br>
	              姓&nbsp&nbsp&nbsp&nbsp名:<input name="name" value="${manlist.name}">
	      <input type="submit" value="修改">
	</form>
</body>
</html>