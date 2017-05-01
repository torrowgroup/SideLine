<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>填写招聘表</title>
<link rel="stylesheet" href="./staticFile/css/bootstrap.css">
<link rel="stylesheet" href="./staticFile/css/experience.css">
</head>

<body>
<div class="container">
  <div class="row">
     <div class="col-lg-1 col-lg-offset-1 col-md-2  col-xs-2 col-xs-offset-1">
             <a> <button class="btn btn-primary" type="button">填写招聘表</button></a>
        </div>
        <div class="col-lg-3 col-lg-offset-5 col-md-5 scol-md-offset-3 col-xs-5  col-xs-offset-1">
            <p>当前位置：我要招聘>>填写招聘表</p>
        </div>
        <div class="col-lg-2 col-md-3 col-xs-3">
            <p>欢迎使用本系统</p>
        </div>
  </div>
</div>
<div id="body-one">
 <div class="container-one">
 <center>${recruitPrompt}</center>
 <form action="${path}/RecruitServlet?ask=write" method="post">
   <div class="row">
      <div class="col-lg-3 col-lg-offset-3 col-md-3 col-md-offset-2 col-xs-3 col-xs-offset-2" style="margin-left:28%;">
        <div class="col-lg-5 col-md-6  col-xs-6">
            <span>招聘单位（个人）：</span>
        </div>
        <div class="col-lg-6 col-md-6  col-xs-6">
           <input style="margin-top: 10px;margin-left:-23px;" type="text" class="form-control" name="unit">
         </div>
      </div>
      <div class="col-lg-3 col-md-3  col-xs-3">
        <div class="col-lg-6 col-md-6  col-xs-6">
            <span>薪资/h：</span>
        </div>
        <div class="col-lg-6 col-md-6  col-xs-6">
           <input type="text" class="form-control" name="salary">
         </div>
      </div>
   </div>
   <div class="row">
      <div class="col-lg-3 col-lg-offset-3 col-md-3 col-md-offset-2 col-xs-3 col-xs-offset-2" style="margin-left:28%;">
        <div class="col-lg-5 col-md-6  col-xs-6">
            <span>发起人：</span>
        </div>
        <div class="col-lg-6 col-md-6  col-xs-6">
           <input type="text" class="form-control" name="name">
         </div>
      </div>
      <div class="col-lg-3 col-md-3  col-xs-3">
        <div class="col-lg-6 col-md-6  col-xs-6">
            <span>所需工作：</span>
        </div>
        <div class="col-lg-6 col-md-6  col-xs-6">
           <input type="text" class="form-control" name="work">
         </div>
      </div>
   </div>
   <div class="row">
      <div class="col-lg-3 col-lg-offset-3 col-md-3 col-md-offset-2 col-xs-3 col-xs-offset-2" style="margin-left:28%;">
        <div class="col-lg-5 col-md-6  col-xs-6">
            <span>经验要求：</span>
        </div>
        <div class="col-lg-6 col-md-6  col-xs-6">
        
       			 <select style="width:125px;height:33px;margin-left:-20px;" name="requirement">
	          		<option value="无">无</option>
	          		<option value="一">一年</option>
	          		<option value="两">两年</option>
	          	</select>
        
<!--            <input type="text" class="form-control"> -->
         </div>
      </div>
      <div class="col-lg-3 col-md-3  col-xs-3">
        <div class="col-lg-6 col-md-6  col-xs-6">
            <span>手机号：</span>
        </div>
        <div class="col-lg-6 col-md-6  col-xs-6">
           <input type="text" class="form-control">
         </div>
      </div>
   </div>
   <div class="row">
      <div class="col-lg-3 col-lg-offset-3 col-md-3 col-md-offset-2 col-xs-3 col-xs-offset-2" style="margin-left:28%;">
        <div class="col-lg-5 col-md-6  col-xs-6">
            <span>工作时间：</span>
        </div>
        <div class="col-lg-6 col-md-6  col-xs-6">
        
         		<select style="width:125px;height:33px;margin-left:-20px;" name="time">
	          		<option value="上午">上午</option>
	          		<option value="下午">下午</option>
	          		<option value="全天">全天</option>
	          	</select>
         </div>
      </div>
      <div class="col-lg-3 col-md-3  col-xs-3">
        <div class="col-lg-6 col-md-6  col-xs-6">
            <span>工作地点：</span>
        </div>
        <div class="col-lg-6 col-md-6  col-xs-6">
           <input type="text" class="form-control" name="location">
         </div>
      </div>
   </div>
     <div class="row">
      <div class="col-lg-3 col-lg-offset-3 col-md-3 col-md-offset-2 col-xs-3 col-xs-offset-2" style="margin-left:28%;">
        
      </div>
    <div class="row">
     <div class="col-lg-1 col-lg-offset-9 col-md-1 col-md-offset-9 col-xs-1 col-xs-offset-9" style="margin-top:20px;">
         <button class="btn btn-primary" type="submit">提&nbsp;&nbsp;交</button>
      </div>
    </div>
   </div>
   </form>
 </div>
</div>
<script src="./staticFile/js/jquery-2.1.4.js"></script>
<script src="./staticFile/js/bootstrap.js"></script>
</body>
</html>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<!-- <title>Insert title here</title> -->
<!-- </head> -->
<!-- <body> -->
<%-- 	<center>${recruitPrompt}</center> --%>
<%-- 	<form action="${path}/RecruitServlet?ask=write" method="post"> --%>
<!-- 		<table> -->
<!-- 			<tr> -->
<!-- 				<td>发起单位：</td> -->
<!-- 				<td><input type="text"name="unit" ></td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td>姓名：</td> -->
<!-- 				<td><input type="text"name="name" ></td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td>工作：</td> -->
<!-- 				<td><input type="text"name="work" ></td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td>要求(实践经验)：</td> -->
<!-- 				<td> -->
<!-- 					<input type="radio"name="requirement" value="无" >无 -->
<!-- 					<input type="radio"name="requirement" value="一" >一年 -->
<!-- 					<input type="radio"name="requirement" value="两" >两年 -->
<!-- 				</td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td>phone：</td> -->
<!-- 				<td><input type="text" name="phone" ></td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td>工作时间：</td> -->
<!-- 				<td> -->
<!-- 					<input type="radio" name="time" value="上午"> 上午 -->
<!-- 					<input type="radio" name="time" value="下午">下午 -->
<!-- 					<input type="radio" name="time" value="全天">全天 -->
<!-- 				</td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td>地址：</td> -->
<!-- 				<td> -->
<!-- 					<input type="radio" name="location" >新乡 -->
<!-- 				</td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td>薪资/小时：</td> -->
<!-- 				<td><input type="text" name="salary"></td> -->
<!-- 			</tr> -->
<!-- 			<tr>	 -->
<!-- 				<td><input type="submit" value="提交"></td> -->
<!-- 			</tr> -->
<!-- 		</table> -->
<!-- 	</form> -->
<!-- </body> -->
<!-- </html> -->