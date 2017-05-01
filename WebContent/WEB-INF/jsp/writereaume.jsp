<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>填写简历</title>
<link rel="stylesheet" href="./staticFile/css/bootstrap.css">
<link rel="stylesheet" href="./staticFile/css/resume.css">
</head>

<body>
<div class="container">
  <div class="row">
     <div class="col-lg-1 col-lg-offset-1 col-md-2  col-xs-2 col-xs-offset-1">
             <a> <button class="btn btn-primary" type="button">填写简历</button></a>
        </div>
        <div class="col-lg-3 col-lg-offset-5 col-md-5 scol-md-offset-3 col-xs-5  col-xs-offset-1">
            <p>当前位置：个人中心>>填写简历</p>
        </div>
        <div class="col-lg-2 col-md-3 col-xs-3">
            <p>欢迎登录本系统</p>
        </div>
  </div>
</div>
<div id="body-one">
 <div class="container-one">
 <center>${reaumePrompt}</center>
 <form action="${path}/ReaumeServlet?ask=write" method="post">
	   <div class="row">
	      <div class="col-lg-3 col-lg-offset-3 col-md-3 col-md-offset-2 col-xs-3 col-xs-offset-2" style="margin-left:28%;">
	        <div class="col-lg-5 col-md-6  col-xs-6">
	            <span>姓名：</span>
	        </div>
	        <div class="col-lg-6 col-md-6  col-xs-6">
	           <input type="text" class="form-control" name="name">
	         </div>
	      </div>
	      <div class="col-lg-3 col-md-3  col-xs-3">
	        <div class="col-lg-6 col-md-6  col-xs-6">
	            <span>年龄：</span>
	        </div>
	        <div class="col-lg-6 col-md-6  col-xs-6" style="margin-left:-8%;">
	           <input type="text" class="form-control" name="age">
	         </div>
	      </div>
	   </div>
	   <div class="row">
	      <div class="col-lg-3 col-lg-offset-3 col-md-3 col-md-offset-2 col-xs-3 col-xs-offset-2" style="margin-left:28%;">
	        <div class="col-lg-5 col-md-6  col-xs-6">
	            <span>性别：</span>
	        </div>
	        <div class="col-lg-6 col-md-6  col-xs-6">
	            <select style="width:125px;height:33px;margin-left:-50px;" name="sex">
	          		<option value="男">男</option>
	          		<option value="女">女</option>
	          	</select>
	         </div>
	      </div>
	      <div class="col-lg-3 col-md-3  col-xs-3">
	        <div class="col-lg-6 col-md-6  col-xs-6">
	            <span>地区：</span>
	        </div>
	        <div class="col-lg-6 col-md-6  col-xs-6" style="margin-left:-8%;">
<!-- 	           <input type="text" class="form-control" name="location"> -->
				<select style="width:125px;height:33px;margin-left:-50px;" name="location" > 
		          		<option value="北京市">北京市</option>
		          		<option value="上海市">上海市</option>
		          		<option value="广州市" >广州市</option>
		          		<option value="深圳市" >深圳市</option>
		          		<option value="香港市" >香港市</option>
		          		<option value="天津市" >天津市</option>
		          		<option value="杭州市" >杭州市</option>
		          		<option value="武汉市" >武汉市</option>
		          		<option value="温州市" >温州市</option>
		          		<option value="成都市" >成都市</option>
		          		<option value="石家庄市" >石家庄市</option>
		          		<option value="无锡市" >无锡市</option>
		          		<option value="大连市" >大连市</option>
		          		<option value="沈阳市" >沈阳市</option>
		          		<option value="青岛市" >青岛市</option>
		          		<option value="宁波市" >宁波市</option>
		          		<option value="珠海市" >珠海市</option>
		          		<option value="合肥市" >合肥市</option>
		          		<option value="南京市" >南京市</option>
		          	</select>	

	         </div>
	      </div>
	   </div>
	   <div class="row">
	      <div class="col-lg-3 col-lg-offset-3 col-md-3 col-md-offset-2 col-xs-3 col-xs-offset-2" style="margin-left:28%;">
	        <div class="col-lg-5 col-md-6  col-xs-6">
	            <span>最好学历：</span>
	        </div>
	        <div class="col-lg-6 col-md-6  col-xs-6">
	           	<select style="width:125px;height:33px;margin-left:-20px;" name="education">
	          		<option value="大学">大学</option>
	          		<option value="高中">高中</option>
	          	</select>
	         </div>
	      </div>
	      <div class="col-lg-3 col-md-3  col-xs-3">
	        <div class="col-lg-6 col-md-6  col-xs-6">
	            <span>工作经验：</span>
	        </div>
	        <div class="col-lg-6 col-md-6  col-xs-6">
	          	<select style="width:125px;height:33px;margin-left:-40px;" name="experience" >
	          		<option value="无">无</option>
	          		<option value="一">一年</option>
	          		<option value="两">两年</option>
	          	</select>
	         </div>
	      </div>
	   </div>
	   <div class="row">
	      <div class="col-lg-3 col-lg-offset-3 col-md-3 col-md-offset-2 col-xs-3 col-xs-offset-2" style="margin-left:28%;">
	        <div class="col-lg-5 col-md-6  col-xs-6">
	            <span>电话：</span>
	        </div>
	        <div class="col-lg-6 col-md-6  col-xs-6">
	           <input type="text" class="form-control" name="phone">
	         </div>
	      </div>
	      <div class="col-lg-3 col-md-3  col-xs-3">
	        <div class="col-lg-6 col-md-6  col-xs-6">
	            <span>意向：</span>
	        </div>
	        <div class="col-lg-6 col-md-6  col-xs-6" style="margin-left:-8%;"> 
<!-- 	           <input type="text" class="form-control" name="skill"> -->

				<select style="width:125px;height:33px;margin-left:-40px;" name="skill" >
	          		<option value="网上兼职">网上兼职</option>
	          		<option value="钟点工">钟点工</option>
	          		<option value="礼仪">礼仪</option>
	          		<option value="家教">家教</option>
	          		<option value="翻译">翻译</option>
	          		<option value="导游">导游</option>
	          		<option value="校园代理">校园代理</option>
	          		<option value="网管">网管</option>
	          		<option value="促销员">促销员</option>
	          		<option value="主持/演出">主持/演出</option>
	          	</select>
				
	         </div>
	      </div>
	   </div>
	     <div class="row">
	      <div class="col-lg-5 col-lg-offset-3 col-md-5 col-md-offset-2 col-xs-5 col-xs-offset-2" style="margin-left:28%;">
	         <div class="col-lg-5 col-md-6  col-xs-6">
	            <span>自我简介</span>
	         </div>
	           <textarea class="form-control" rows="5" cols="18" style="margin-left:2%;" name ="introduce"></textarea>
	      </div>
	     </div>
	    <div class="row">
	     <div class="col-lg-1 col-lg-offset-9 col-md-1 col-md-offset-9 col-xs-1 col-xs-offset-9" style="margin-top:20px;">
	         <button class="btn btn-primary" type="submit">提&nbsp;&nbsp;交</button>
	      </div>
	    </div>
    </form>
   </div>
 </div>
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
<%-- 	<center>${reaumePrompt}</center> --%>
<%-- 	<form action="${path}/ReaumeServlet?ask=write" method="post"> --%>
<!-- 		<table> -->
<!-- 			<tr> -->
<!-- 				<td>姓名：</td> -->
<!-- 				<td><input type="text" name="name"></td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td>age：</td> -->
<!-- 				<td><input type="text" name="age"></td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td>sex：</td> -->
<!-- 				<td> -->
<!-- 					<input type="radio" name="sex" value="男">男 -->
<!-- 					<input type="radio" name="sex" value="女">女 -->
<!-- 				</td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td>地区:</td><td><input type="text" name="location"></td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td>最高学历：</td> -->
<!-- 				<td><input type="radio" name="education" value="大学">大学</td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td>工作经验：</td> -->
<!-- 				<td><input type="radio" name="experience" value="一">一年</td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td>电话：</td> -->
<!-- 				<td><input type="text" name="phone"></td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td>意向：</td> -->
<!-- 				<td><input type="text" name="skill"></td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td>自我简介：</td> -->
<!-- 				<td><input type="text" name ="introduce"></td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td><input type="submit" value="提交"></td> -->
<!-- 			</tr> -->
<!-- 		</table> -->
<!-- 	</form> -->
<!-- </body> -->
<!-- </html> -->