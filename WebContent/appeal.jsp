<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>找回密码</title>

<link rel="stylesheet" href="./staticFile/css/bootstrap.css">
<link rel="stylesheet" href="./staticFile/css/zhang-one.css">
</head>

<body>
<div class="container">
  <div class="row">
     <div class="col-lg-1 col-lg-offset-1 col-md-2  col-xs-2 col-xs-offset-1">
             <a> <button class="btn btn-primary" type="button">找回密码</button></a>
        </div>
        <div class="col-lg-3 col-lg-offset-5 col-md-5 scol-md-offset-3 col-xs-5  col-xs-offset-1">
            <p>当前位置：找回密码</p>
        </div>
        <div class="col-lg-2 col-md-3 col-xs-3">
            <p>欢迎使用本系统</p>
        </div>
  </div>
</div>
<div id="body-one">
 <div class="container-one">
 	<form action="${path}/LoginServlet?ask=appeal" method="post" target="_top">
	   <div class="row">
	      <div class="col-lg-3 col-lg-offset-5 col-md-3 col-md-offset-5 col-xs-3 col-xs-offset-5" >
	        <div class="col-lg-4 col-md-6  col-xs-6">
	            <span>账户名：</span>
	        </div>
	        <div class="col-lg-6 col-md-6  col-xs-6">
	           <input type="text" class="form-control" placeholder="请输入用户名" name="username" id="username">
	         </div>
	      </div>
	   </div>
	     <div class="row">
	     <div class="col-lg-2 col-lg-offset-7 col-md-1 col-md-offset-7 col-xs-1 col-xs-offset-7">
	         <button class="btn btn-primary" type="submit" style="width:85%;">找回密码</button>
	      </div>
	   </div>
   </form>
 </div>
</div>
<script src="./staticFile/js/jquery-2.1.4.js"></script>
<script src="./staticFile/js/bootstrap.js"></script>
</body>
</html>