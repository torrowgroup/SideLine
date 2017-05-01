<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>ma-four</title>
<link rel="stylesheet" href="./staticFile/css/bootstrap.css">
<link rel="stylesheet" href="./staticFile/css/ma-four.css">
</head>

<body>
<div class="container">
  <div class="row">
     <div class="col-lg-1 col-lg-offset-1 col-md-2  col-xs-2 col-xs-offset-1">
             <a> <button class="btn btn-primary" type="button"><img src="./staticFile/images/yonghuzengjia.png" width="25" height="25">查看个人资料</button></a>
        </div>
        <div class="col-lg-3 col-lg-offset-5 col-md-5 scol-md-offset-3 col-xs-5  col-xs-offset-1">
            <p>当前位置：个人中心>>查看个人资料</p>
        </div>
        <div class="col-lg-2 col-md-3 col-xs-3">
            <p>欢迎登录本系统</p>
        </div>
  </div>
</div>
<form name="form" action="${path}/ManagerServlet?ask=updatemanager&id=${manlist.id}" method="post">
<div id="body-one">
 <div class="container-one">
   <div class="row">
      <div class="col-lg-3 col-lg-offset-3 col-md-3 col-md-offset-2 col-xs-3 col-xs-offset-2" style="margin-left:28%;">
        <div class="col-lg-4 col-md-6  col-xs-6">
            <span>用户名：</span>
        </div>
        <div class="col-lg-6 col-md-6  col-xs-6">
        <input name="username" value="${manlist.username}" readonly="readonly" type="text" class="form-control">
<!--            <input type="text" class="form-control"> -->
         </div>
      </div>
      <div class="col-lg-3 col-md-3  col-xs-3">
        <div class="col-lg-4 col-md-6  col-xs-6">
            <span>密码：</span>
        </div>
        <div class="col-lg-6 col-md-6  col-xs-6">
        <input name="password" value="${manlist.password}" type="text" class="form-control">
<!--            <input type="text" class="form-control"> -->
         </div>
      </div>
   </div>
   <div class="row">
      <div class="col-lg-3 col-lg-offset-3 col-md-3 col-md-offset-2 col-xs-3 col-xs-offset-2" style="margin-left:28%;">
        <div class="col-lg-4 col-md-6  col-xs-6">
            <span>手机号：</span>
        </div>
        <div class="col-lg-6 col-md-6  col-xs-6">
        <input name="phone" value="${manlist.phone}" type="text" class="form-control">
<!--            <input type="text" class="form-control"> -->
         </div>
      </div>
      <div class="col-lg-3 col-md-3  col-xs-3">
        <div class="col-lg-4 col-md-6  col-xs-6">
            <span>姓名：</span>
        </div>
        <div class="col-lg-6 col-md-6  col-xs-6">
        <input name="name" value="${manlist.name}" type="text" class="form-control"> 
<!--            <input type="text" class="form-control"> -->
         </div>
      </div>
   </div>
     <div class="row">
      <div class="col-lg-1 col-lg-offset-9 col-md-1 col-md-offset-9 col-xs-1 col-xs-offset-9">
         <button class="btn btn-primary" type="submit">修&nbsp;&nbsp;改</button>
      </div>
   </div>
 </div>
</div>
</form>
<script src="js/jquery-2.1.4.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>
     
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<!-- <title>Insert title here</title> -->
<!-- </head> -->
<!-- <body> -->
<%-- 	<form name="form" action="${path}/ManagerServlet?ask=updatemanager&id=${manlist.id}" method="post">  --%>
<%-- 	              账户名:<input name="username" value="${manlist.username}" readonly="readonly"><br> --%>
<%-- 	              密&nbsp&nbsp&nbsp&nbsp码:<input name="password" value="${manlist.password}"><br> --%>
<%-- 	              手机号:<input name="phone" value="${manlist.phone}"><br> --%>
<%-- 	              姓&nbsp&nbsp&nbsp&nbsp名:<input name="name" value="${manlist.name}"> --%>
<!-- 	      <input type="submit" value="修改"> -->
<!-- 	</form> -->
<!-- </body> -->
<!-- </html> -->