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
	<c:forEach items="${requestScope.list}" var="item">
	 <form name="form" action="${path}/RecruitServlet?ask=updaterecruit&id=${item.id}" method="post">
	               <input name="id" value="${item.id}">
	                <input name="username" value="${item.username}">
	                <input name="unit" value="${item.unit}">
	                <input name="name" value="${item.name}">
	                <input name="work" value="${item.work}">
	                <input name="requirement" value="${item.requirement}">
	                <input name="phone" value="${item.phone}">
	                <input name="time" value="${item.time}">
	                <input name="location" value="${item.location}">
	                <input name="salary" value="${item.salary}">
	                <input name="allow" value="${item.allow}">
	                <input type="submit" value="提交">
	                </form>
        	</c:forEach>
</body>
</html>