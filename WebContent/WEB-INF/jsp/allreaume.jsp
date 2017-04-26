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
	<table width="1000" height="100" align="center" border="1">
			<tr>
				<td colspan="12" align="center">所有简历信息</td>
			</tr>
			<tr>
				<td>id</td>
				<td>用户名</td>
				<td>名字</td>
				<td>年龄</td>
				<td>性别</td>
				<td>地址</td>
				<td>学历</td>
				<td>经验</td>
				<td>手机号</td>
				<td>技能</td>
				<td>介绍</td>
			</tr>
			 <c:forEach items="${requestScope.list}" var="item">  
		            <tr>
		            <td>${item.id}</td>  
		            <td>${item.username}</td>
	              	<td>${item.name}</td>
	              	<td>${item.age}</td>
	               	<td>${item.sex}</td>
	               	<td>${item.location}</td>
	               	<td>${item.education}</td>
	               	<td>${item.experience}</td>
	               	<td>${item.phone}</td>
	               	<td>${item.skill}</td>
	               	<td>${item.introduce}</td>
		            <td><a href="${path}/ReaumeServlet?id=${item.id}&ask=deletid">删除</a></td>      
		            </tr> 
        	</c:forEach>  
    </table>
</body>
</html>