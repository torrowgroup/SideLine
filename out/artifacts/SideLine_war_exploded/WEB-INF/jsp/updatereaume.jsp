<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    <!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>简历</title>
<link rel="stylesheet" href="./staticFile/css/bootstrap.css">
<link rel="stylesheet" href="./staticFile/css/jianli.css">
</head>

<body>
<div class="container">
  <div class="row">
     <div class="col-lg-1 col-lg-offset-1 col-md-2  col-xs-2 col-xs-offset-1">
             <a> <button class="btn btn-primary" type="button">修改简历</button></a>
        </div>
        <div class="col-lg-3 col-lg-offset-5 col-md-5 scol-md-offset-3 col-xs-5  col-xs-offset-1">
            <p>当前位置：个人中心>>修改个人简历</p>
        </div>
        <div class="col-lg-2 col-md-3 col-xs-3">
            <p>欢迎登录本系统</p>
        </div>
  </div>
</div>
<div id="body-one">
 <div class="container-one">
 	<c:forEach items="${requestScope.list}" var="list">
 	 <form name="form" action="${path}/ReaumeServlet?ask=updatereaume&id=${list.id}" method="post">
		   <div class="row">
		      <div class="col-lg-3 col-lg-offset-3 col-md-3 col-md-offset-2 col-xs-3 col-xs-offset-2" style="margin-left:28%;">
		        <div class="col-lg-4 col-md-6  col-xs-6">
		            <span>用户名：</span>
		        </div>
		        <div class="col-lg-6 col-md-6  col-xs-6">
		           <input type="text" class="form-control" name="username" value="${list.username}" readonly="readonly">
		         </div>
		      </div>
		      <div class="col-lg-3 col-md-3  col-xs-3">
		        <div class="col-lg-4 col-md-6  col-xs-6">
		            <span>姓名：</span>
		        </div>
		        <div class="col-lg-6 col-md-6  col-xs-6">
		           <input type="text" class="form-control" name="name" value="${list.name}">
		         </div>
		      </div>
		   </div>
		   <div class="row">
		      <div class="col-lg-3 col-lg-offset-3 col-md-3 col-md-offset-2 col-xs-3 col-xs-offset-2" style="margin-left:28%;">
		        <div class="col-lg-4 col-md-6  col-xs-6">
		            <span>年龄：</span>
		        </div>
		        <div class="col-lg-6 col-md-6  col-xs-6">
		           <input type="text" class="form-control" name="age" value="${list.age}">
		         </div>
		      </div>
		      <div class="col-lg-3 col-md-3  col-xs-3">
		        <div class="col-lg-4 col-md-6  col-xs-6">
		            <span>性别：</span>
		        </div>
		        <div class="col-lg-6 col-md-6  col-xs-6">
<%-- 		           <input type="text" class="form-control" name="sex" value="${item.sex}"> --%>
						<select class="form-control" name="sex">
							<option value="男"  <c:if test='${list.sex eq "男"}'>selected="selected"</c:if>>男</option>
							<option value="女"  <c:if test='${list.sex eq "女"}'>selected="selected"</c:if>>女</option>
						</select>
		         </div>
		      </div>
		   </div>
		   <div class="row">
		      <div class="col-lg-3 col-lg-offset-3 col-md-3 col-md-offset-2 col-xs-3 col-xs-offset-2" style="margin-left:28%;">
		        <div class="col-lg-4 col-md-6  col-xs-6">
		            <span>地址：</span>
		        </div>
		        <div class="col-lg-6 col-md-6  col-xs-6">
<!-- 		           <input type="text" class="form-control"> -->
		
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
		            <span>学历：</span>
		        </div>
		        <div class="col-lg-6 col-md-6  col-xs-6">
<%-- 		           <input type="text" class="form-control" name="education" value="${list.education}"> --%>
					<select class="form-control" name="education">
							<option value="大学"  <c:if test='${list.education eq "大学"}'>selected="selected"</c:if>>大学</option>
							<option value="高中"  <c:if test='${list.education eq "高中"}'>selected="selected"</c:if>>高中</option>
					</select>

		         </div>
		      </div>
		   </div>
		   <div class="row">
		      <div class="col-lg-3 col-lg-offset-3 col-md-3 col-md-offset-2 col-xs-3 col-xs-offset-2" style="margin-left:28%;">
		        <div class="col-lg-4 col-md-6  col-xs-6">
		            <span>经验：</span>
		        </div>
		        <div class="col-lg-6 col-md-6  col-xs-6">
<%-- 		           <input type="text" class="form-control" name="experience" value="${list.experience}"> --%>

					<select class="form-control" name="experience">
							<option value="无"  <c:if test='${list.experience eq "无"}'>selected="selected"</c:if>>无</option>
							<option value="一"  <c:if test='${list.experience eq "一"}'>selected="selected"</c:if>>一年</option>
							<option value="两"  <c:if test='${list.experience eq "两"}'>selected="selected"</c:if>>一年以上</option>
					</select>

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
		            <span>技能：</span>
		        </div>
		        <div class="col-lg-6 col-md-6  col-xs-6">
<%-- 		           <input type="text" class="form-control" name="skill" value="${list.skill}"> --%>
						<select style="width:125px;height:33px;margin-left:-40px;" name="skill" >
			          		<option value="网上兼职" <c:if test="${list.skill eq '网上兼职'}"> selected="selected" </c:if> >网上兼职</option>
			          		<option value="钟点工" <c:if test="${list.skill eq '钟点工'}"> selected="selected" </c:if>>钟点工</option>
			          		<option value="礼仪" <c:if test="${list.skill eq '礼仪'}"> selected="selected" </c:if>>礼仪</option>
			          		<option value="家教" <c:if test="${list.skill eq '家教'}"> selected="selected" </c:if>>家教</option>
			          		<option value="翻译" <c:if test="${list.skill eq '翻译'}"> selected="selected" </c:if>>翻译</option>
			          		<option value="导游" <c:if test="${list.skill eq '导游'}"> selected="selected" </c:if>>导游</option>
			          		<option value="校园代理" <c:if test="${list.skill eq '校园代理'}"> selected="selected" </c:if>>校园代理</option>
			          		<option value="网管" <c:if test="${list.skill eq '网管'}"> selected="selected" </c:if>>网管</option>
			          		<option value="促销员" <c:if test="${list.skill eq '促销员'}"> selected="selected" </c:if>>促销员</option>
			          		<option value="主持/演出" <c:if test="${list.skill eq '主持/演出'}"> selected="selected" </c:if>>主持/演出</option>
			          	</select>

		         </div>
		      </div>
		      <div class="col-lg-3 col-md-3  col-xs-3">
		        <div class="col-lg-4 col-md-6  col-xs-6">
		            <span>介绍：</span>
		        </div>
		        <div class="col-lg-6 col-md-6  col-xs-6">
		           <input type="text" class="form-control" name="introduce" value="${list.introduce}">
		         </div>
		      </div>
		   </div>
		   <div class="row">
		    <div class="col-lg-1 col-lg-offset-9 col-md-1 col-md-offset-9 col-xs-1 col-xs-offset-9">
		         <button class="btn btn-primary" type="submit">提&nbsp;&nbsp;交</button>
		      </div>
		   </div>
	</form>
	</c:forEach>
 </div>
</div>
<script src="./staticFile/js/jquery-2.1.4.js"></script>
<script src="./staticFile/js/bootstrap.js"></script>
</body>
</html>