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
	 <form name="form" action="${path}/ReaumeServlet?ask=updatereaume&id=${item.id}" method="post">
	               用户名:<input name="username" value="${item.username}" readonly="readonly">
	               名&nbsp&nbsp&nbsp&nbsp字:<input name="name" value="${item.name}">
	               年&nbsp&nbsp&nbsp&nbsp龄:<input name="age" value="${item.age}"><br>
	               性&nbsp&nbsp&nbsp&nbsp别:<input name="sex" value="${item.sex}">
	               地&nbsp&nbsp&nbsp&nbsp址:<input name="location" value="${item.location}">
	               学&nbsp&nbsp&nbsp&nbsp历:<input name="education" value="${item.education}"><br>
	               经&nbsp&nbsp&nbsp&nbsp验:<input name="experience" value="${item.experience}">
	               手机号:<input name="phone" value="${item.phone}">
	               技&nbsp&nbsp&nbsp&nbsp能:<input name="skill" value="${item.skill}"><br>
	               介&nbsp&nbsp&nbsp&nbsp绍:<input name="introduce" value="${item.introduce}">
	            				 <input type="submit" value="提交">
	 </form>
	</c:forEach>
</body>
</html>