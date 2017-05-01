<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>ma-one</title>
<link rel="stylesheet" href="./staticFile/css/bootstrap.css">
<link rel="stylesheet" href="./staticFile/css/ma-one.css">
</head>

<body>

<div class="container">
  <div class="row">
     <div class="col-lg-1 col-lg-offset-1 col-md-2  col-xs-2 col-xs-offset-1">
             <a> <button class="btn btn-primary" type="button"><img src="./staticFile/images/yonghuzengjia.png" width="25" height="25">审核招聘</button></a>
        </div>
        <div class="col-lg-3 col-lg-offset-5 col-md-5 scol-md-offset-3 col-xs-5  col-xs-offset-1">
            <p>当前位置：招聘管理>>审核招聘</p>
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
         <th>发起人账户</th>
         <th>招聘公司（个人）</th>
         <th>发起人</th>
         <th>所需工作</th>
         <th>工作经验</th>
         <th>手机号</th>
         <th>工作时间</th>
         <th>地址</th>
         <th>薪资/h</th>
         <th>状态</th>
         <th>状况</th>
       </tr>
      </thead>
      <tbody>
      <c:forEach items="${requestScope.list}" var="item">
       <form name="form" action="${path}/RecruitServlet?ask=updateno&id=${item.id}" method="post">
        <tr>
          <td><input name="id" value="${item.id}" size="1"></td>
          <td><input name="username" value="${item.username}" size="6"></td>
          <td><input name="unit" value="${item.unit}" size="8"></td>
          <td><input name="name" value="${item.name}" size="6"></td>
          <td><input name="work" value="${item.work}" size="6"></td>
          <td><input name="requirement" value="${item.requirement}" size="4"></td>
          <td><input name="phone" value="${item.phone}" size="10"></td>
          <td><input name="time" value="${item.time}" size="2"></td>
          <td><input name="location" value="${item.location}" size="2"></td>
          <td><input name="salary" value="${item.salary}" size="4"></td>
           <td><input name="allow" value="${item.allow}" size="2"></td>
         <td><input type="submit" value="允许发布"></td>
        </tr>
        </form>
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
<!-- 				<td colspan="12" align="center">所有未审核的招聘信息</td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td>id</td> -->
<!-- 				<td>发起人账户</td> -->
<!-- 				<td>招聘公司(个人)</td> -->
<!-- 				<td>发起人</td> -->
<!-- 				<td>所需工作</td> -->
<!-- 				<td>工作经验</td> -->
<!-- 				<td>手机号</td> -->
<!-- 				<td>工作时间</td> -->
<!-- 				<td>地址</td> -->
<!-- 				<td>薪水/h</td> -->
<!-- 				<td>状态</td> -->
<!-- 			</tr> -->
<%-- 			 <c:forEach items="${requestScope.list}" var="item"> --%>
<%-- 			  <form name="form" action="${path}/RecruitServlet?ask=updateno&id=${item.id}" method="post">   --%>
<!-- 		            <tr> -->
<%-- 		             <td><input name="id" value="${item.id}" size="1"></td> --%>
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
<!-- 		            <td><input type="submit" value="允许发布"></td>      -->
<!-- 		            </tr> -->
<!-- 		            </form>  -->
<%--         	</c:forEach>   --%>
<!--     </table> -->
<!-- </body> -->
<!-- </html> -->