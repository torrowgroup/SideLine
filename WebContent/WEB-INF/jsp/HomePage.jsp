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
	<body>
	<div id="function">
	<details>
		<summary>个人中心</summary>
		<a href="${path}/UserServlet?ask=check" target="in">查看个人资料</a><br>
		<a href="${path }/ReaumeServlet?ask=checkreaume" target="in">查看个人简历</a><br>
		<a href="${path }/RecruitServlet?ask=checkrecruit" target="in">查看个人招聘</a>
		<a href="${path }/HireServlet?ask=checkhire">查看工作经历</a>
		<a href="${path}/HireServlet?ask">查看招聘经历</a>
		<a></a>    
     </details>
     
     
     
     
     <details>
		<summary>我要求职</summary>
		<a href="${path}/ReaumeServlet?ask=writereaume" target="in">填写简历</a><br>
		<a href="${path}/RecruitServlet?ask=recommendjob" target="in">查看推荐工作</a><br>    
     </details>
     <details>
		<summary>我要招聘</summary>
		<a href="${path}/RecruitServlet?ask=writerecruit" target="in">发布招聘信息</a><br>  
     </details>
     
     
     
     
      <details>
		<summary>状态管理</summary>
		<a href="${path}/LogoutServlet?ask=exit">退出</a>
     </details>           
	</div>
	<div id="view">
	<c:forEach items="${requestScope.Postlist}" var="item">            
	</c:forEach>
  		<iframe src="${path}/RecruitServlet?ask=selectallowrecruit
  		" width=100% height="500" name="in"></iframe>
	</div>
</body>
</html>