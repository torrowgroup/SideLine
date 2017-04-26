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
	                用户名:<input name="username" value="${item.username}">
	                招聘单位(个人)<input name="unit" value="${item.unit}">
	                发起人:<input name="name" value="${item.name}"><br>
	                所需工作:<input name="work" value="${item.work}">
	                经验要求<input name="requirement" value="${item.requirement}">
	                手机号:<input name="phone" value="${item.phone}"><br>
	                工作时间:<input name="time" value="${item.time}">
	                工作地点:<input name="location" value="${item.location}">
	                薪资/h:<input name="salary" value="${item.salary}"><br>
	                是否通过审核:<input name="allow" value="${item.allow}">
	                <input type="submit" value="提交">
	                </form>
        	</c:forEach>
</body>
</html>