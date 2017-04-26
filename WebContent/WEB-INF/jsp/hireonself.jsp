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
	<div>
		<center>身为招聘者</center>
		<c:forEach items="${lists1}" var="lists1">
			<table>
				<tr>
					
				</tr>
			</table>
		</c:forEach>
	</div>
	<div>
		<center>身为求职者</center>
		<c:forEach items="${lists2}" var="lists2">
		</c:forEach>
	</div>
</body>
</html>