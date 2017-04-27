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
	<table width="900" height="100" align="center" border="1">
			<tr>
				<td colspan="10" align="center">所有雇佣信息</td>
			</tr>
			<tr>
				<td>id</td>
				<td>招聘id</td>
				<td>公司(个人)名字</td>
				<td>发起人</td>
				<td>求职者id</td>
				<td>求职者</td>
				<td>公司评价</td>
				<td>求职者评价</td>
				<td>工作完成状态</td>
			</tr>
			 <c:forEach items="${requestScope.lists}" var="item">  
		            <tr>
		            <td>${item.id}</td>  
		            <td>${item.unitid}</td>
	              	<td>${item.unit}</td>
	              	<td>${item.unitusername}</td>
	               	<td>${item.seekerid}</td>
	               	<td>${item.seekerusername}</td>
	               	<td>${item.unitremark}</td>
	               	<td>${item.seekerremark}</td>
	               	<td>${item.finish}</td>
		            </tr> 
        	</c:forEach>  
    </table>
	
</body>
</html>