<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/HomePage.css">
<title>Insert title here</title>
</head>
<body>
	<div id="function">
	<details>
		<summary>个人中心</summary>
		<a href="${path}/ManagerServlet?ask=checkmanager" target="in">查看个人资料</a><br>    
     </details>
     <details>
		<summary>求职管理</summary>
		<a href="${path}/ReaumeServlet?ask=check" target="in">查看简历</a><br>  
     </details>
     <details>
		<summary>招聘管理</summary>
		<a href="${path}/RecruitServlet?ask=verifyrecruit" target="in">审核招聘</a><br>  
     </details>
     <details>
		<summary>雇佣管理</summary>
		<a href="${path}/HireServlet?ask=check" target="in">查看雇佣</a><br>  
     </details>
      <details>
		<summary>状态管理</summary>
		<a href="${path}/LogoutServlet?ask=exit">退出</a>
     </details>           
	</div>
	<div id="view">
  		<iframe src="" width=100% height="500" name="in"></iframe>
	</div>
</body>
</html>