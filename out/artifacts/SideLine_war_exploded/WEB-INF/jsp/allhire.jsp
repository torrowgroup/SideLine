<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>所有雇佣</title>
<link rel="stylesheet" href="./staticFile/css/bootstrap.css">
<link rel="stylesheet" href="./staticFile/css/ma-two.css">
</head>

<div class="container">
  <div class="row">
     <div class="col-lg-1 col-lg-offset-1 col-md-2  col-xs-2 col-xs-offset-1">
             <a> <button class="btn btn-primary" type="button"><img src="./staticFile/images/yonghuzengjia.png" width="25" height="25">查看雇佣</button></a>
        </div>
        <div class="col-lg-3 col-lg-offset-5 col-md-5 scol-md-offset-3 col-xs-5  col-xs-offset-1">
            <p>当前位置：雇用管理>>查看雇佣</p>
        </div>
        <div class="col-lg-2 col-md-3 col-xs-3">
            <p>欢迎登录本系统</p>
        </div>
  </div>
</div>
<div id="body-one">
  <div class="table-responsive">
    <table class="table table-bordered table-hover table-striped">
     <caption align="top" style="text-align:center;"><strong>所有简历信息</strong></caption>  
    <thead>
      <tr class="two">
         <th>id</th>
         <th>招聘id</th>
         <th>公司（个人）名字</th>
         <th>发起人</th>
         <th>求职者id</th>
         <th>求职者</th>
         <th>公司评价</th>
         <th>求职者评价</th>
         <th>工作完成状态</th>
       </tr>
      </thead>
      <tbody>
      <c:forEach items="${requestScope.lists}" var="item">
        <tr>
          <td>${item.id}</td>
          <td>${item.unitid}</td>
          <td>${item.unit}</td>
          <td>${item.unitusername}</td>
          <td>${item.seekerid}</td>
          <td>${item.seekerusername}</td>
          <td>${item.unitremark}</td>
          <td>${item.seekerremark}</td>
          <td>${item.finish}</td>
        </tr>
        </c:forEach>
      </tbody>
    </table>
</div>
</div>
</body>
</html>
