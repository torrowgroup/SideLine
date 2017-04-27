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
	<table>
			<tr>
				<td>身为招聘方，未结束的工作</td>
			</tr>
			<tr>
				<td>招聘单位(个人)</td>
				<td>求职者</td>
			</tr>
		<c:forEach items="${oneselfHires1}" var="oneselfHire">
			<tr>
				<td>${oneselfHire.unit}</td>
				<td>${oneselfHire.seekerusername}</td>
				<td><a href="${path}/HireServlet?ask=finish&id=${oneselfHire.id}">工作完成</a><td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<table>
			<tr>
				<td>身为求职方，未结束的工作</td>
			</tr>
			<tr>	
				<td>招聘单位(个人)</td>
				<td>求职者</td>
			</tr>
		<c:forEach items="${oneselfHires2}" var="oneselfHire">
			<tr>
				<td>${oneselfHire.unit}</td>
				<td>${oneselfHire.seekerusername}</td>
				<td>工作未完成<td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<table>
			<tr>
				<td>身为招聘方，已结束的工作</td>
			</tr>
			<tr>
				<td>招聘单位(个人)</td>
				<td>求职者</td>
				<td>我的评语</td>
				<td>求职者评语</td>
			<tr>
		<c:forEach items="${oneselfHires3}" var="oneselfHire">
			<tr>
				<td>${oneselfHire.unit}</td>
				<td>${oneselfHire.seekerusername}</td>
				<td>${oneselfHire.unitremark}</td>
				<td>${oneselfHire.seekerremark}</td>
				<td><a href="${path}/HireServlet?ask=writeunitremark&id=${oneselfHire.id}">填写评语</a></td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<table>
			<tr>
				<td>身为求职方，已结束的工作</td>
			</tr>
			<tr>
				<td>招聘单位(个人)</td>
				<td>求职者</td>
				<td>我的评语</td>
				<td>求职者评语</td>
			<tr>
		<c:forEach items="${oneselfHires4}" var="oneselfHire">
			<tr>
				<td>${oneselfHire.unit}</td>
				<td>${oneselfHire.seekerusername}</td>
				<td>${oneselfHire.unitremark}</td>
				<td>${oneselfHire.seekerremark}</td>
				<td><a href="${path}/HireServlet?ask=writeseekerremark&id=${oneselfHire.id}">填写评语</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>