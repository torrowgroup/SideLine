<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>${hirePrompt}</center>
	<div>
		<table>
			<tr>
				<td>招聘单位（个人）</td>
				<td>招聘人</td>
				<td>工作</td>
				<td>经验要求</td>
				<td>工作时间</td>
				<td>地区</td>
				<td>薪资/小时</td>
				<td>联系电话</td>
			</tr>
			<c:forEach items="${recommend}" var="recommends">
				<tr>
					<td>${recommends.unit}</td>
					<td>${recommends.name}</td>
					<td>${recommends.work}</td>
					<td>${recommends.requirement}</td>
					<td>${recommends.time}</td>
					<td>${recommends.location}</td>
					<td>${recommends.salary}</td>
					<td>${recommends.phone}</td>
					<td><a href="${path}/HireServlet?recruitId=${recommends.id}&ask=apply">申请</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>