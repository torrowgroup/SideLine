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
				<td colspan="13" align="center">学生信息</td>
			</tr>
			<tr>
				<td>id</td>
				<td>账户</td>
				<td>招聘单位(个人)</td>
				<td>招聘人</td>
				<td>所需职业</td>
				<td>经验要求</td>
				<td>手机号</td>
				<td>工作时间</td>
				<td>地址</td>
				<td>薪资/h</td>
				<td>状态</td>
			</tr>
			 <c:forEach items="${requestScope.list}" var="item">  
	            <tr>  
	                <td><input name="id" value="${item.id}" size="1"></td>
	                <td><input name="username" value="${item.username}" size="6"></td>
	                <td><input name="unit" value="${item.unit}" size="8"></td>
	                <td><input name="name" value="${item.name}" size="6"></td>
	                <td><input name="work" value="${item.work}" size="8"></td>
	                <td><input name="requirement" value="${item.requirement}" size="8"></td>
	                <td><input name="phone" value="${item.phone}" size="6"></td>
	                <td><input name="time" value="${item.time}" size="2"></td>
	                <td><input name="location" value="${item.location}" size="2"></td>
	                <td><input name="salary" value="${item.salary}" size="6"></td>
	                <td><input name="allow" value="${item.allow}" size="6"></td>
	                <td><a href="${path}/RecruitServlet?id=${item.id}&ask=delet">删除</a></td>
	                <td><a href="${path}/RecruitServlet?id=${item.id}&ask=update">修改</a></td>      
	            </tr>  
        	</c:forEach>  
    </table>
</body>
</html>