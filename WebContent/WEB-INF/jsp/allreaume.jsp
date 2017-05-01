<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
       <!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>ma-three</title>
<link rel="stylesheet" href="./staticFile/css/bootstrap.css">
<link rel="stylesheet" href="./staticFile/css/ma-three.css">
</head>

<body>
<div class="container">
  <div class="row">
     <div class="col-lg-1 col-lg-offset-1 col-md-2  col-xs-2 col-xs-offset-1">
             <a> <button class="btn btn-primary" type="button"><img src="./staticFile/images/yonghuzengjia.png" width="25" height="25">查看简历</button></a>
        </div>
        <div class="col-lg-3 col-lg-offset-5 col-md-5 scol-md-offset-3 col-xs-5  col-xs-offset-1">
            <p>当前位置：求职管理>>查看简历</p>
        </div>
        <div class="col-lg-2 col-md-3 col-xs-3">
            <p>欢迎登录本系统</p>
        </div>
  </div>
</div>
<div id="body-one">
  <div class="table-responsive">
    <table class="table table-bordered table-hover table-striped">
     <caption align="top" style="text-align:center;"><strong>所有未审核的招聘信息</strong></caption>  
    <thead>
      <tr class="two">
         <th>id</th>
         <th>用户名</th>
         <th>名字</th>
         <th>年龄</th>
         <th>性别</th>
         <th>地址</th>
         <th>学历</th>
         <th>经验</th>
         <th>手机号</th>
         <th>技能</th>
         <th>介绍</th>
         <th>编辑</th>
       </tr>
      </thead>
      <tbody>
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
         <td class="four" width="100px"><img src="./staticFile/images/lajitong.png"><a href="${path}/ReaumeServlet?id=${item.id}&ask=deletid" style="color:#E11E05;">删除</a></td>
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
<!-- 				<td colspan="12" align="center">所有简历信息</td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td>id</td> -->
<!-- 				<td>用户名</td> -->
<!-- 				<td>名字</td> -->
<!-- 				<td>年龄</td> -->
<!-- 				<td>性别</td> -->
<!-- 				<td>地址</td> -->
<!-- 				<td>学历</td> -->
<!-- 				<td>经验</td> -->
<!-- 				<td>手机号</td> -->
<!-- 				<td>技能</td> -->
<!-- 				<td>介绍</td> -->
<!-- 			</tr> -->
<%-- 			 <c:forEach items="${requestScope.list}" var="item">   --%>
<!-- 		            <tr> -->
<%-- 		            <td>${item.id}</td>   --%>
<%-- 		            <td>${item.username}</td> --%>
<%-- 	              	<td>${item.name}</td> --%>
<%-- 	              	<td>${item.age}</td> --%>
<%-- 	               	<td>${item.sex}</td> --%>
<%-- 	               	<td>${item.location}</td> --%>
<%-- 	               	<td>${item.education}</td> --%>
<%-- 	               	<td>${item.experience}</td> --%>
<%-- 	               	<td>${item.phone}</td> --%>
<%-- 	               	<td>${item.skill}</td> --%>
<%-- 	               	<td>${item.introduce}</td> --%>
<%-- 		            <td><a href="${path}/ReaumeServlet?id=${item.id}&ask=deletid">删除</a></td>       --%>
<!-- 		            </tr>  -->
<%--         	</c:forEach>   --%>
<!--     </table> -->
<!-- </body> -->
<!-- </html> -->