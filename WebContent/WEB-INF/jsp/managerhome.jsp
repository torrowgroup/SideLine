<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      
      <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>
<frameset   rows="20%,80%"  cols="100%" frameborder="0" border="0" framespacing="0" name="head">
	<frame  src="./staticFile/iframe/head.html" scrolling="no"></frame>
<frameset cols="10%,77%"  frameborder="0"  framespacing="0" name="caidan">
	<frame src="./staticFile/iframe/caidan2.html" scrolling="no"></frame>
    <frame name="mainFrame" src="/SideLine/ManagerServlet?ask=checkmanager" scrolling="yes" frameborder="1" /></frameset>
    <noframes></noframes>
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
		<a href="${path}/HireServlet?ask=checkall" target="in">查看雇佣</a><br>  
     </details>
      <details>
		<summary>状态管理</summary>
		<a href="${path}/LogoutServlet?ask=exitmanager">退出</a>
     </details>           
	</div>
	<div id="view">
  		<iframe src="" width=100% height="500" name="in"></iframe>
	</div>
>>>>>>> fb78e5a7fa32067e8acae90b63380fd4ba6ac4df
</body>
</html>
      
      
      
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<!-- <link rel="stylesheet" type="text/css" href="./css/HomePage.css"> -->
<!-- <title>Insert title here</title> -->
<!-- </head> -->
<!-- <body> -->
<!-- 	<div id="function"> -->
<!-- 	<details> -->
<!-- 		<summary>个人中心</summary> -->
<%-- 		<a href="${path}/ManagerServlet?ask=checkmanager" target="in">查看个人资料</a><br>     --%>
<!--      </details> -->
<!--      <details> -->
<!-- 		<summary>求职管理</summary> -->
<%-- 		<a href="${path}/ReaumeServlet?ask=check" target="in">查看简历</a><br>   --%>
<!--      </details> -->
<!--      <details> -->
<!-- 		<summary>招聘管理</summary> -->
<%-- 		<a href="${path}/RecruitServlet?ask=verifyrecruit" target="in">审核招聘</a><br>   --%>
<!--      </details> -->
<!--      <details> -->
<!-- 		<summary>雇佣管理</summary> -->
<%-- 		<a href="${path}/HireServlet?ask=checkall" target="in">查看雇佣</a><br>   --%>
<!--      </details> -->
<!--       <details> -->
<!-- 		<summary>状态管理</summary> -->
<%-- 		<a href="${path}/LogoutServlet?ask=exitmanager">退出</a> --%>
<!--      </details>            -->
<!-- 	</div> -->
<!-- 	<div id="view"> -->
<!--   		<iframe src="" width=100% height="500" name="in"></iframe> -->
<!-- 	</div> -->
<!-- </body> -->
<!-- </html> -->