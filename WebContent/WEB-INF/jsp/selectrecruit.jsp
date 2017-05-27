<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>查看招聘工作</title>
<link rel="stylesheet" href="./staticFile/css/bootstrap.css">
<link rel="stylesheet" href="./staticFile/css/recruit.css">
</head>

<body>
<div class="container">
  <div class="row">
     <div class="col-lg-1 col-lg-offset-1 col-md-2  col-xs-2 col-xs-offset-1">
             <a> <button class="btn btn-primary" type="button">查看招聘</button></a>
        </div>
        <div class="col-lg-3 col-lg-offset-5 col-md-5 scol-md-offset-3 col-xs-5  col-xs-offset-1">
            <p>当前位置：首页>>查看招聘</p>
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
         <th>招聘单位（个人）</th>
         <th>招聘人</th>
         <th>工作</th>
         <th>经验要求</th>
         <th>工作时间</th>
         <th>地区</th>
         <th>薪资/小时</th>
         <th>联系电话</th>
         <th>操作</th>
       </tr>
      </thead>
      <tbody>      	
      		<c:forEach items="${recommend}" var="recommends">
				<tr>
					<td>${recommends.unit}</td>
					<td>${recommends.name}</td>
					<td>${recommends.work}</td>
					<td>${recommends.requirement}</td>
					<td>${recommends.time}</td>
					<td>${recommends.location}</td>
					<td>${recommends.salary}</td>
					<td>${recommends.phone}</td>
					<td><a class="btn btn-primary" href="${path}/HireServlet?recruitId=${recommends.id}&ask=apply">申请</a></td>
				</tr>
			</c:forEach>
			<tr style="height:80px"><td colspan="9" ><center style="color:red">${recruitPrompt}</center></td></tr>
      </tbody>
    </table>
</div>

</div>
</body>
</html>