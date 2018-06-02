<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    <!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>查看个人招聘</title>
<link rel="stylesheet" href="./staticFile/css/bootstrap.css">
<link rel="stylesheet" href="./staticFile/css/person-recruit.css">
</head>


<body>
<div class="container">
  <div class="row">
     <div class="col-lg-1 col-lg-offset-1 col-md-2  col-xs-2 col-xs-offset-1">
             <a> <button class="btn btn-primary" type="button">个人简历</button></a>
        </div>
        <div class="col-lg-3 col-lg-offset-5 col-md-5 scol-md-offset-3 col-xs-5  col-xs-offset-1">
            <p>当前位置：个人中心>>查看个人简历</p>
        </div>
        <div class="col-lg-2 col-md-3 col-xs-3">
            <p>欢迎登录本系统</p>
        </div>
  </div>
</div>
<div id="body-one">
<!--   <div class="table-responsive"> -->
    <table class="table table-bordered table-hover table-striped">
      <caption align="top" style="text-align:center;"><strong>个人简历</strong></caption>  
      <tr class="two">
         <th>id</th>
         <th>账户</th>
         <th>名字</th>
         <th>年龄</th>
         <th>性别</th>
         <th>地址</th>
         <th>最高学历</th>
         <th>工作经验</th>
         <th>手机号</th>
         <th>技能</th>
         <th>自我介绍</th>
         <th>编辑</th>
       </tr>
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
	                <td  class="four"> <img src="./staticFile/images/bian.png" style="width:25px;height:25px;"><a href="${path}/ReaumeServlet?id=${item.id}&ask=delet">删除</a>&nbsp;&nbsp;&nbsp;&nbsp;<img src="./staticFile/images/lajitong.png" style="width:25px;height:25px;"><a href="${path}/ReaumeServlet?id=${item.id}&ask=update">修改</a></td>      
	            </tr>  
        	</c:forEach>
      </tbody>
    </table>
</div>
</body>
</html>