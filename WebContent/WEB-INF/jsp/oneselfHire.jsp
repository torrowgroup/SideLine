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
	<c:forEach items="${oneselfHires1}" var="oneselfHire">
		<table>
			<tr>
				<td>招聘单位(个人)</td>
				<td>${oneselfHire.unit}</td>
			</tr>
			<tr>
				<td>求职者</td>
				<td>${oneselfHire.seekerusername}</td>
			</tr>
			<tr>
				<td><a href="${path}/HireServlet?ask=finish">工作完成</a><td>
			</tr>
		</table>
	</c:forEach>
	<c:forEach items="${oneselfHires2}" var="oneselfHire">
		<table>
			<tr>
				<td>招聘单位(个人)</td>
				<td>${oneselfHire.unit}</td>
			</tr>
			<tr>
				<td>求职者</td>
				<td>${oneselfHire.seekerusername}</td>
			</tr>
			<tr><td>工作未完成</td></tr>
		</table>
			
	</c:forEach>
	
	<c:forEach items="${oneselfHires3}" var="oneselfHire">
		<table>
			<tr>
				<td>招聘单位(个人)</td>
				<td>${oneselfHire.unit}</td>
			</tr>
			<tr>
				<td>求职者</td>
				<td>${oneselfHire.seekerusername}</td>
			</tr>
			
			<tr>
				<td>我的评语</td>
				<td>${oneselfHire.unitremark}</td>
			</tr>
			<tr>
				<td>求职者评语</td>
				<td>${oneselfHire.unitremark}</td>
			</tr>
			<tr>
				<td><a href="">填写评语</a></td>
			</tr>
		</table>
	</c:forEach>
	<c:forEach items="${oneselfHires4}" var="oneselfHire">
		<table>
			<tr>
				<td>招聘单位(个人)</td>
				<td>${oneselfHire.unit}</td>
			</tr>
			<tr>
				<td>求职者</td>
				<td>${oneselfHire.seekerusername}</td>
			</tr>
			
			<tr>
				<td>招聘人的评语</td>
				<td>${oneselfHire.unitremark}</td>
			</tr>
			<tr>
				<td>我的评语</td>
				<td>${oneselfHire.unitremark}</td>
			</tr>
			<tr>
				<td><a href="">填写评语</a></td>
			</tr>
		</table>
	</c:forEach>
</body>
</html>