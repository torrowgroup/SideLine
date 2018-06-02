<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>查看个人资料</title>
<link rel="stylesheet" href="./staticFile/css/bootstrap.css">
<link rel="stylesheet" href="./staticFile/css/person.css">
</head>
<body>
<div class="container">
  <div class="row">
     <div class="col-lg-1 col-lg-offset-1 col-md-2  col-xs-2 col-xs-offset-1">
             <a> <button class="btn btn-primary" type="button"><img src="./staticFile/images/yonghuzengjia.png" width="25" height="25">完善信息</button></a>
        </div>
        <div class="col-lg-3 col-lg-offset-5 col-md-5 scol-md-offset-3 col-xs-5  col-xs-offset-1">
            <p>当前位置：个人中心>>查看个人资料</p>
        </div>
        <div class="col-lg-2 col-md-3 col-xs-3">
            <p>欢迎登录本系统</p>
        </div>
  </div>
</div>
<div id="body-one">
<form name="form" action="${path}/UserServlet?ask=updateuser&id=${list.id}" method="post">
 <div class="container-one">
   <div class="row">
      <div class="col-lg-3 col-lg-offset-3 col-md-3 col-md-offset-2 col-xs-3 col-xs-offset-2" style="margin-left:28%;">
        <div class="col-lg-4 col-md-6  col-xs-6">
            <span>账户名：</span>
        </div>
        <div class="col-lg-6 col-md-6  col-xs-6">
           <input type="text" class="form-control" name="username" value="${list.username}" readonly="readonly">
         </div>
      </div>
      <div class="col-lg-3 col-md-3  col-xs-3">
        <div class="col-lg-4 col-md-6  col-xs-6">
            <span>密码：</span>
        </div>
        <div class="col-lg-6 col-md-6  col-xs-6">
           <input type="text" class="form-control" name="password" value="${list.password}">
         </div>
      </div>
   </div>
   <div class="row">
      <div class="col-lg-3 col-lg-offset-3 col-md-3 col-md-offset-2 col-xs-3 col-xs-offset-2" style="margin-left:28%;">
        <div class="col-lg-4 col-md-6  col-xs-6">
            <span>姓名：</span>
        </div>
        <div class="col-lg-6 col-md-6  col-xs-6">
           <input type="text" class="form-control" name="name" value="${list.name}">
         </div>
      </div>
      <div class="col-lg-3 col-md-3  col-xs-3">
        <div class="col-lg-4 col-md-6  col-xs-6">
            <span>手机号：</span>
        </div>
        <div class="col-lg-6 col-md-6  col-xs-6">
           <input type="text" class="form-control" name="phone" value="${list.phone}">
         </div>
      </div>
   </div>
   <div class="row">
      <div class="col-lg-3 col-lg-offset-3 col-md-3 col-md-offset-2 col-xs-3 col-xs-offset-2" style="margin-left:28%;">
        <div class="col-lg-4 col-md-6  col-xs-6">
            <span>性别：</span>
        </div>
        <div class="col-lg-6 col-md-6  col-xs-6">
<%--            <input type="text" class="form-control" name="sex" value="${list.sex}"> --%>
				<select class="form-control" name="sex">
					<option value="男"  <c:if test='${list.sex eq "男"}'>selected="selected"</c:if>>男</option>
					<option value="女"  <c:if test='${list.sex eq "女"}'>selected="selected"</c:if>>女</option>
				</select>
         </div>
      </div>
      <div class="col-lg-3 col-md-3  col-xs-3">
        <div class="col-lg-4 col-md-6  col-xs-6">
            <span>年龄：</span>
        </div>
        <div class="col-lg-6 col-md-6  col-xs-6">
           <input type="text" class="form-control" name="age" value="${list.age}">
         </div>
      </div>
   </div>
   <div class="row">
      <div class="col-lg-3 col-lg-offset-3 col-md-3 col-md-offset-2 col-xs-3 col-xs-offset-2" style="margin-left:28%;">
        <div class="col-lg-4 col-md-6  col-xs-6">
            <span>地址：</span>
        </div>
        <div class="col-lg-6 col-md-6  col-xs-6">
				<select style="width:125px;height:33px;margin-left:-40px;" name="location" > 
	          		<option value="北京市" <c:if test="${list.location eq '北京市'}"> selected="selected" </c:if> >北京市</option>
	          		<option value="上海市" <c:if test="${list.location eq '上海市'}"> selected="selected" </c:if>>上海市</option>
	          		<option value="广州市" <c:if test="${list.location eq '广州市'}"> selected="selected" </c:if>>广州市</option>
	          		<option value="深圳市" <c:if test="${list.location eq '深圳市'}"> selected="selected" </c:if>>深圳市</option>
	          		<option value="香港市" <c:if test="${list.location eq '香港市'}"> selected="selected" </c:if>>香港市</option>
	          		<option value="天津市" <c:if test="${list.location eq '天津市'}"> selected="selected" </c:if>>天津市</option>
	          		<option value="杭州市" <c:if test="${list.location eq '杭州市'}"> selected="selected" </c:if>>杭州市</option>
	          		<option value="武汉市" <c:if test="${list.location eq '武汉市'}"> selected="selected" </c:if>>武汉市</option>
	          		<option value="温州市" <c:if test="${list.location eq '温州市'}"> selected="selected" </c:if>>温州市</option>
	          		<option value="成都市" <c:if test="${list.location eq '成都市'}"> selected="selected" </c:if>>成都市</option>
	          		<option value="石家庄市" <c:if test="${list.location eq '石家庄市'}"> selected="selected" </c:if>>石家庄市</option>
	          		<option value="无锡市" <c:if test="${list.location eq '无锡市'}"> selected="selected" </c:if>>无锡市</option>
	          		<option value="大连市" <c:if test="${list.location eq '大连市'}"> selected="selected" </c:if>>大连市</option>
	          		<option value="沈阳市" <c:if test="${list.location eq '沈阳市'}"> selected="selected" </c:if>>沈阳市</option>
	          		<option value="青岛市" <c:if test="${list.location eq '青岛市'}"> selected="selected" </c:if>>青岛市</option>
	          		<option value="宁波市" <c:if test="${list.location eq '宁波市'}"> selected="selected" </c:if>>宁波市</option>
	          		<option value="珠海市" <c:if test="${list.location eq '珠海市'}"> selected="selected" </c:if>>珠海市</option>
	          		<option value="合肥市" <c:if test="${list.location eq '合肥市'}"> selected="selected" </c:if>>合肥市</option>
	          		<option value="南京市" <c:if test="${list.location eq '南京市'}"> selected="selected" </c:if>>南京市</option>
	          	</select>
         </div>
      </div>
      <div class="col-lg-3 col-md-3  col-xs-3">
        <div class="col-lg-4 col-md-6  col-xs-6">
            <span>密保：</span>
        </div>
        <div class="col-lg-6 col-md-6  col-xs-6">
           <input type="text" class="form-control" name="security" value="${list.security}">
         </div>
      </div>
   </div>
     <div class="row">
      <div class="col-lg-3 col-lg-offset-3 col-md-3 col-md-offset-2 col-xs-3 col-xs-offset-2" style="margin-left:28%;">
        <div class="col-lg-4 col-md-6  col-xs-6">
            <span>答案：</span>
        </div>
        <div class="col-lg-6 col-md-6  col-xs-6">
           <input type="text" class="form-control" name="answer" value="${list.answer}">
         </div>
      </div>
     <div class="col-lg-1 col-lg-offset-2 col-md-1 col-md-offset-2 col-xs-1 col-xs-offset-2">
         <button class="btn btn-primary" type="submit">修&nbsp;&nbsp;改</button>
      </div>
   </div>
 </div>
 </form>
 <div class="container-two">
  <div class="row">
   <div class="col-lg-5 col-lg-offset-5 col-md-5 col-md-offset-4 col-xs-5 col-xs-offset-4">
           <p class="xixnxi">可修改完善个人信息</p>
        </div>
      </div>
 </div>
</div>
<script src="./staticFile/js/jquery-2.1.4.js"></script>
<script src="./staticFile/js/bootstrap.js"></script>
<script src="./staticFile/js/distpicker.data.js"></script>
<script src="./staticFile/js/distpicker.js"></script>
<script src="./staticFile/js/main.js"></script>
</body>
</html>