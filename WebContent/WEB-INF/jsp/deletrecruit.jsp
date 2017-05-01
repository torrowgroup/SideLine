<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>学生信息</title>
<link rel="stylesheet" href="./staticFile/css/bootstrap.css">
<link rel="stylesheet" href="./staticFile/css/message.css">
</head>

<body>
<div class="container">
  <div class="row">
     <div class="col-lg-1 col-lg-offset-1 col-md-2  col-xs-2 col-xs-offset-1">
             <a> <button class="btn btn-primary" type="button">个人招聘</button></a>
        </div>
        <div class="col-lg-3 col-lg-offset-5 col-md-5 scol-md-offset-3 col-xs-5  col-xs-offset-1">
            <p>当前位置：个人中心>>查看个人招聘</p>
        </div>
        <div class="col-lg-2 col-md-3 col-xs-3">
            <p>欢迎登录本系统</p>
        </div>
  </div>
</div>
<div id="body-one">
  <div class="table-responsive">
    <table class="table table-bordered table-hover table-striped">
    <thead>
      <tr class="two">
         <th>id</th>
         <th>账户</th>
         <th>招聘单位（个人）</th>
         <th>招聘人</th>
         <th>所需职业</th>
         <th>经验要求</th>
         <th>手机号</th>
         <th>工作时间</th>
         <th>地址</th>
         <th>薪资/h</th>
         <th>状态</th>
         <th>编辑</th>
       </tr>
      </thead>
      <tbody>
    	<c:forEach items="${requestScope.list}" var="item">
	            <tr>  
	                <td>${item.id}</td>
	                <td>${item.username}</td>
	                <td>${item.unit}</td>
	                <td>${item.name}</td>
	                <td>${item.work}</td>
	                <td>${item.requirement}</td>
	                <td>${item.phone}</td>
	                <td>${item.time}</td>
	                <td>${item.location}</td>
	                <td>${item.salary}</td>
	                <td>${item.allow}</td>
	                <td>
	                	<img src="./staticFile/images/bian.png"><a href="${path}/RecruitServlet?id=${item.id}&ask=delet">删除</a>&nbsp;&nbsp;&nbsp;&nbsp;<img src="./staticFile/images/lajitong.png"><a href="${path}/RecruitServlet?id=${item.id}&ask=update">修改</a>			
	                </td>      
	            </tr>  
         	</c:forEach>
      </tbody>
    </table>
</div>
</div>
</body>
</html>
     
     
     
     
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<!-- <title>Insert title here</title> -->
<!-- </head> -->
<!-- <body> -->
<!-- 	<table width="1000" height="100" align="center" border="1"> -->
<!-- 			<tr> -->
<!-- 				<td colspan="13" align="center">个人招聘</td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td>id</td> -->
<!-- 				<td>账户</td> -->
<!-- 				<td>招聘单位(个人)</td> -->
<!-- 				<td>招聘人</td> -->
<!-- 				<td>所需职业</td> -->
<!-- 				<td>经验要求</td> -->
<!-- 				<td>手机号</td> -->
<!-- 				<td>工作时间</td> -->
<!-- 				<td>地址</td> -->
<!-- 				<td>薪资/h</td> -->
<!-- 				<td>状态</td> -->
<!-- 			</tr> -->
<%-- 			 <c:forEach items="${requestScope.list}" var="item">   --%>
<!-- 	            <tr>   -->
<%-- 	                <td><input name="id" value="${item.id}" size="1"></td> --%>
<%-- 	                <td><input name="username" value="${item.username}" size="6"></td> --%>
<%-- 	                <td><input name="unit" value="${item.unit}" size="8"></td> --%>
<%-- 	                <td><input name="name" value="${item.name}" size="6"></td> --%>
<%-- 	                <td><input name="work" value="${item.work}" size="8"></td> --%>
<%-- 	                <td><input name="requirement" value="${item.requirement}" size="8"></td> --%>
<%-- 	                <td><input name="phone" value="${item.phone}" size="6"></td> --%>
<%-- 	                <td><input name="time" value="${item.time}" size="2"></td> --%>
<%-- 	                <td><input name="location" value="${item.location}" size="2"></td> --%>
<%-- 	                <td><input name="salary" value="${item.salary}" size="6"></td> --%>
<%-- 	                <td><input name="allow" value="${item.allow}" size="6"></td> --%>
<%-- 	                <td><a href="${path}/RecruitServlet?id=${item.id}&ask=delet">删除</a></td> --%>
<%-- 	                <td><a href="${path}/RecruitServlet?id=${item.id}&ask=update">修改</a></td>       --%>
<!-- 	            </tr>   -->
<%--         	</c:forEach>   --%>
<!--     </table> -->
<!-- </body> -->
<!-- </html> -->