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
				<td colspan="12" align="center">所有未审核的招聘信息</td>
			</tr>
			<tr>
				<td>id</td>
				<td>发起人账户</td>
				<td>招聘公司(个人)</td>
				<td>发起人</td>
				<td>所需工作</td>
				<td>工作经验</td>
				<td>手机号</td>
				<td>工作时间</td>
				<td>地址</td>
				<td>薪水/h</td>
				<td>状态</td>
			</tr>
			 <c:forEach items="${requestScope.list}" var="item">
			  <form name="form" action="${path}/RecruitServlet?ask=updateno&id=${item.id}" method="post">  
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
		            <td><input type="submit" value="允许发布"></td>     
		            </tr>
		            </form> 
        	</c:forEach>  
    </table>
</body>
</html>