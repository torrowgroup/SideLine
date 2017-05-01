<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>查看工作经历</title>
<link rel="stylesheet" href="./staticFile/css/bootstrap.css">
<link rel="stylesheet" href="./staticFile/css/work.css">
</head>
<body>
<div class="container">
  <div class="row">
     <div class="col-lg-1 col-lg-offset-1 col-md-2  col-xs-2 col-xs-offset-1">
             <a> <button class="btn btn-primary" type="button">工作经历</button></a>
        </div>
        <div class="col-lg-3 col-lg-offset-5 col-md-5 scol-md-offset-3 col-xs-5  col-xs-offset-1">
            <p>当前位置：个人中心页>>查看工作经历</p>
        </div>
        <div class="col-lg-2 col-md-3 col-xs-3">
            <p>欢迎登录本系统</p>
        </div>
  </div>
</div>
<center>${hirePrompt}</center>
<div id="body-one">
  <div class="table-responsive">
  <p>身为招聘方，未结束的工作</p>
    <table class="table table-bordered table-hover table-striped">
    <thead>
      <tr class="two">
         <th>招聘单位（个人）</th>
         <th>求职者</th>
         <th>操作</th>
       </tr>
      </thead>
      <tbody>
      
      <c:forEach items="${oneselfHires1}" var="oneselfHire">
			<tr>
				<td>${oneselfHire.unit}</td>
				<td>${oneselfHire.seekerusername}</td>
				<td><a class="btn btn-primary"  href="${path}/HireServlet?ask=finish&id=${oneselfHire.id}">工作完成</a></td>
			</tr>
		</c:forEach>
      </tbody>
    </table>
 </div>
  <div class="table-responsive">
  <p>身为求职方，未结束的工作</p>
    <table class="table table-bordered table-hover table-striped">
    <thead>
      <tr class="two">
         <th>招聘单位（个人）</th>
         <th>求职者</th>
         <th>状态</th>
       </tr>
      </thead>
      <tbody>
      
      <c:forEach items="${oneselfHires2}" var="oneselfHire">
			<tr>
				<td>${oneselfHire.unit}</td>
				<td>${oneselfHire.seekerusername}</td>
				<td>工作未完成</td>
			</tr>
		</c:forEach>
      </tbody>
    </table>
 </div>
 <div class="table-responsive">
  <p>身为招聘方，已结束的工作</p>
    <table class="table table-bordered table-hover table-striped">
    <thead>
      <tr class="two">
         <th>招聘单位（个人）</th>
         <th>求职者</th>
         <td>我的评语</td>
		 <td>求职者评语</td>
         <th>操作</th>
       </tr>
      </thead>
      <tbody>
       
       <c:forEach items="${oneselfHires3}" var="oneselfHire">
			<tr>
				<td>${oneselfHire.unit}</td>
				<td>${oneselfHire.seekerusername}</td>	
				<td>${oneselfHire.unitremark}</td>
				<td>${oneselfHire.seekerremark}</td>
				<td><a class="btn btn-primary" href="${path}/HireServlet?ask=writeunitremark&id=${oneselfHire.id}">填写评语</a></td>
			</tr>
		</c:forEach>
      </tbody>
    </table>
 </div>
 <div class="table-responsive">
  <p>身为求职方，已结束的工作</p>
    <table class="table table-bordered table-hover table-striped">
    <thead>
      <tr class="two">
         <th>招聘单位（个人）</th>
         <th>求职者</th>
         <td>我的评语</td>
	     <td>求职者评语</td>
	     <td>操作</td>
       </tr>
      </thead>
      <tbody>
      <c:forEach items="${oneselfHires4}" var="oneselfHire">
      	<tr>
       		<td>${oneselfHire.unit}</td>
			<td>${oneselfHire.seekerusername}</td>
			<td>${oneselfHire.unitremark}</td>
			<td>${oneselfHire.seekerremark}</td>
 			<td><a class="btn btn-primary" href="${path}/HireServlet?ask=writeseekerremark&id=${oneselfHire.id}">填写评语</a></td>
       </tr>
       </c:forEach>
      </tbody>
    </table>
 </div>
</div>
</body>
</html>