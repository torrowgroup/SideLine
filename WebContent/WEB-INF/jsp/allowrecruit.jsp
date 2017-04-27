<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	td{
		border: solid;
	}
</style>
</head>
<body>
	<center>${recruitPrompt}</center>
	<a href="${path}/RecruitServlet?ask=selectallowrecruit">全部招聘信息</a>
	<details>
		<summary>按时间查询</summary>
		<a href="${path}/RecruitServlet?ask=time&time=上午">上午</a>
		<a href="${path}/RecruitServlet?ask=time&time=下午">下午</a>
		<a href="${path}/RecruitServlet?ask=time&time=全天">全天</a>
	</details>
	<details>
		<summary>按地点查询</summary>
		<a href="${path}/RecruitServlet?ask=selectbylocatiuon" name="location">北京</a>
	</details>
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
			<c:forEach items="${allAllowRecruit}" var="allAllowRecruits">
				<tr>
					<td>${allAllowRecruits.unit}</td>
					<td>${allAllowRecruits.name}</td>
					<td>${allAllowRecruits.work}</td>
					<td>${allAllowRecruits.requirement}</td>
					<td>${allAllowRecruits.time}</td>
					<td>${allAllowRecruits.location}</td>
					<td>${allAllowRecruits.salary}</td>
					<td>${allAllowRecruits.phone}</td>
					<td><a href="${path}/HireServlet?recruitId=${allAllowRecruits.id}&ask=apply">申请</a></td>
				</tr>
			</c:forEach>
		</table>
		</div>
</body>
</html>