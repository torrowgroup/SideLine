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
				<td colspan="14" align="center">学生信息</td>
			</tr>
			<tr>
				<td>id</td>
				<td>账户</td>
				<td>名字</td>
				<td>年龄</td>
				<td>性别</td>
				<td>地址</td>
				<td>最高学历</td>
				<td>工作经验</td>
				<td>手机号</td>
				<td>技能</td>
				<td>自我介绍</td>
				<td>状态</td>
				<td>操作</td>
			</tr>
			 <c:forEach items="${requestScope.list}" var="item">  
	            <tr>  
	                <td><input name="id" value="${item.id}" size="1"></td>
	                <td><input name="username" value="${item.username}" size="6"></td>
	                <td><input name="name" value="${item.name}" size="8"></td>
	                <td><input name="age" value="${item.age}" size="6"></td>
	                <td><input name="sex" value="${item.sex}" size="8"></td>
	                <td><input name="location" value="${item.location}" size="8"></td>
	                <td><input name="education" value="${item.education}" size="6"></td>
	                <td><input name="experience" value="${item.experience}" size="2"></td>
	                <td><input name="phone" value="${item.phone}" size="2"></td>
	                <td><input name="skill" value="${item.skill}" size="6"></td>
	                <td><input name="introduce" value="${item.introduce}" size="6"></td>
	                <td><input name="allow" value="${item.allow}" size="6"></td>
	                <td><a href="${path}/ReaumeServlet?id=${item.id}&ask=delet">删除</a></td>
	                <td><a href="${path}/ReaumeServlet?id=${item.id}&ask=update">修改</a></td>      
	            </tr>  
        	</c:forEach>  
    </table>
</body>
</html>