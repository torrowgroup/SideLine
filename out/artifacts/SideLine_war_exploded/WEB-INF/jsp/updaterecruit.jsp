<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>查看招聘经历</title>
<link rel="stylesheet" href="./staticFile/css/bootstrap.css">
<link rel="stylesheet" href="./staticFile/css/experience.css">
</head>

<body>
<div class="container">
  <div class="row">
     <div class="col-lg-1 col-lg-offset-1 col-md-2  col-xs-2 col-xs-offset-1">
             <a> <button class="btn btn-primary" type="button">修改招聘表</button></a>
        </div>
        <div class="col-lg-3 col-lg-offset-5 col-md-5 scol-md-offset-3 col-xs-5  col-xs-offset-1">
            <p>当前位置：个人中心>>修改招聘表</p>
        </div>
        <div class="col-lg-2 col-md-3 col-xs-3">
            <p>欢迎登录本系统</p>
        </div>
  </div>
</div>
<div id="body-one">
 <div class="container-one">
 	<c:forEach items="${requestScope.list}" var="item">
	 <form name="form" action="${path}/RecruitServlet?ask=updaterecruit&id=${item.id}" method="post">
	   <div class="row">
	      <div class="col-lg-3 col-lg-offset-3 col-md-3 col-md-offset-2 col-xs-3 col-xs-offset-2" style="margin-left:28%;">
	        <div class="col-lg-5 col-md-6  col-xs-6">
	            <span>用户名：</span>
	        </div>
	        <div class="col-lg-6 col-md-6  col-xs-6">
	           <input type="text" class="form-control" name="username" value="${item.username}" readonly="readonly">
	         </div>
	      </div>
	      <div class="col-lg-3 col-md-3  col-xs-3">
	        <div class="col-lg-6 col-md-6  col-xs-6">
	            <span>招聘单位（个人）：</span>
	        </div>
	        <div class="col-lg-6 col-md-6  col-xs-6">
	           <input type="text" class="form-control" name="unit" value="${item.unit}">
	         </div>
	      </div>
	   </div>
	   <div class="row">
	      <div class="col-lg-3 col-lg-offset-3 col-md-3 col-md-offset-2 col-xs-3 col-xs-offset-2" style="margin-left:28%;">
	        <div class="col-lg-5 col-md-6  col-xs-6">
	            <span>发起人：</span>
	        </div>
	        <div class="col-lg-6 col-md-6  col-xs-6">
	           <input type="text" class="form-control" name="name" value="${item.name}">
	         </div>
	      </div>
	      <div class="col-lg-3 col-md-3  col-xs-3">
	        <div class="col-lg-6 col-md-6  col-xs-6">
	            <span>所需工作：</span>
	        </div>
	        <div class="col-lg-6 col-md-6  col-xs-6">
<%-- 	           <input type="text" class="form-control" name="work" value="${item.work}"> --%>
				<select style="width:125px;height:33px;margin-left:-40px;" name="work" >
	          		<option value="网上兼职" <c:if test="${item.work eq '网上兼职'}"> selected="selected" </c:if> >网上兼职</option>
	          		<option value="钟点工" <c:if test="${item.work eq '钟点工'}"> selected="selected" </c:if>>钟点工</option>
	          		<option value="礼仪" <c:if test="${item.work eq '礼仪'}"> selected="selected" </c:if>>礼仪</option>
	          		<option value="家教" <c:if test="${item.work eq '家教'}"> selected="selected" </c:if>>家教</option>
	          		<option value="翻译" <c:if test="${item.work eq '翻译'}"> selected="selected" </c:if>>翻译</option>
	          		<option value="导游" <c:if test="${item.work eq '导游'}"> selected="selected" </c:if>>导游</option>
	          		<option value="校园代理" <c:if test="${item.work eq '校园代理'}"> selected="selected" </c:if>>校园代理</option>
	          		<option value="网管" <c:if test="${item.work eq '网管'}"> selected="selected" </c:if>>网管</option>
	          		<option value="促销员" <c:if test="${item.work eq '促销员'}"> selected="selected" </c:if>>促销员</option>
	          		<option value="主持/演出" <c:if test="${item.work eq '主持/演出'}"> selected="selected" </c:if>>主持/演出</option>
	          	</select>

	         </div>
	      </div>
	   </div>
	   <div class="row">
	      <div class="col-lg-3 col-lg-offset-3 col-md-3 col-md-offset-2 col-xs-3 col-xs-offset-2" style="margin-left:28%;">
	        <div class="col-lg-5 col-md-6  col-xs-6">
	            <span>经验要求：</span>
	        </div>
	        <div class="col-lg-6 col-md-6  col-xs-6">
<%-- 	           <input type="text" class="form-control" name="requirement" value="${item.requirement}"> --%>

				<select class="form-control" name="requirement">
							<option value="无"  <c:if test='${item.requirement eq "无"}'>selected="selected"</c:if>>无</option>
							<option value="一"  <c:if test='${item.requirement eq "一"}'>selected="selected"</c:if>>一年</option>
							<option value="两"  <c:if test='${item.requirement eq "两"}'>selected="selected"</c:if>>一年以上</option>
				</select>
				
	         </div>
	      </div>
	      <div class="col-lg-3 col-md-3  col-xs-3">
	        <div class="col-lg-6 col-md-6  col-xs-6">
	            <span>手机号：</span>
	        </div>
	        <div class="col-lg-6 col-md-6  col-xs-6">
	           <input type="text" class="form-control" name="phone" value="${item.phone}">
	         </div>
	      </div>
	   </div>
	   <div class="row">
	      <div class="col-lg-3 col-lg-offset-3 col-md-3 col-md-offset-2 col-xs-3 col-xs-offset-2" style="margin-left:28%;">
	        <div class="col-lg-5 col-md-6  col-xs-6">
	            <span>工作时间：</span>
	        </div>
	        <div class="col-lg-6 col-md-6  col-xs-6">
<%-- 	           <input type="text" class="form-control" name="time" value="${item.time}"> --%>
				<select class="form-control" name="time">
							<option value="上午"  <c:if test='${item.time eq "上午"}'>selected="selected"</c:if>>上午</option>
							<option value="下午"  <c:if test='${item.time eq "下午"}'>selected="selected"</c:if>>下午</option>
							<option value="全天"  <c:if test='${item.time eq "全天"}'>selected="selected"</c:if>>全天</option>
				</select>
				
	         </div>
	      </div>
	      <div class="col-lg-3 col-md-3  col-xs-3">
	        <div class="col-lg-6 col-md-6  col-xs-6">
	            <span>工作地点：</span>
	        </div>
	        <div class="col-lg-6 col-md-6  col-xs-6">
				<select style="width:125px;height:33px;margin-left:-40px;" name="location" > 
	          		<option value="北京市" <c:if test="${item.location eq '北京市'}"> selected="selected" </c:if> >北京市</option>
	          		<option value="上海市" <c:if test="${item.location eq '上海市'}"> selected="selected" </c:if>>上海市</option>
	          		<option value="广州市" <c:if test="${item.location eq '广州市'}"> selected="selected" </c:if>>广州市</option>
	          		<option value="深圳市" <c:if test="${item.location eq '深圳市'}"> selected="selected" </c:if>>深圳市</option>
	          		<option value="香港市" <c:if test="${item.location eq '香港市'}"> selected="selected" </c:if>>香港市</option>
	          		<option value="天津市" <c:if test="${item.location eq '天津市'}"> selected="selected" </c:if>>天津市</option>
	          		<option value="杭州市" <c:if test="${item.location eq '杭州市'}"> selected="selected" </c:if>>杭州市</option>
	          		<option value="武汉市" <c:if test="${item.location eq '武汉市'}"> selected="selected" </c:if>>武汉市</option>
	          		<option value="温州市" <c:if test="${item.location eq '温州市'}"> selected="selected" </c:if>>温州市</option>
	          		<option value="成都市" <c:if test="${item.location eq '成都市'}"> selected="selected" </c:if>>成都市</option>
	          		<option value="石家庄市" <c:if test="${item.location eq '石家庄市'}"> selected="selected" </c:if>>石家庄市</option>
	          		<option value="无锡市" <c:if test="${item.location eq '无锡市'}"> selected="selected" </c:if>>无锡市</option>
	          		<option value="大连市" <c:if test="${item.location eq '大连市'}"> selected="selected" </c:if>>大连市</option>
	          		<option value="沈阳市" <c:if test="${item.location eq '沈阳市'}"> selected="selected" </c:if>>沈阳市</option>
	          		<option value="青岛市" <c:if test="${item.location eq '青岛市'}"> selected="selected" </c:if>>青岛市</option>
	          		<option value="宁波市" <c:if test="${item.location eq '宁波市'}"> selected="selected" </c:if>>宁波市</option>
	          		<option value="珠海市" <c:if test="${item.location eq '珠海市'}"> selected="selected" </c:if>>珠海市</option>
	          		<option value="合肥市" <c:if test="${item.location eq '合肥市'}"> selected="selected" </c:if>>合肥市</option>
	          		<option value="南京市" <c:if test="${item.location eq '南京市'}"> selected="selected" </c:if>>南京市</option>
	          	</select>

	         </div>
	      </div>
	   </div>
	     <div class="row">
	      <div class="col-lg-3 col-lg-offset-3 col-md-3 col-md-offset-2 col-xs-3 col-xs-offset-2" style="margin-left:28%;">
	        <div class="col-lg-5 col-md-6  col-xs-6">
	            <span>薪资/h：</span>
	        </div>
	        <div class="col-lg-6 col-md-6  col-xs-6">
	           <input type="text" class="form-control" name="salary" value="${item.salary}">
	         </div>
	      </div>
	      <div class="col-lg-3 col-md-3  col-xs-3">
	        <div class="col-lg-6 col-md-6  col-xs-6">
	            <span>是否通过审核：</span>
	        </div>
	        <div class="col-lg-6 col-md-6  col-xs-6">
	           <input type="text" class="form-control" name="allow" value="${item.allow}">
	         </div>
	      </div>
	    <div class="row">
	     <div class="col-lg-1 col-lg-offset-9 col-md-1 col-md-offset-9 col-xs-1 col-xs-offset-9" style="margin-top:20px;">
	         <button class="btn btn-primary" type="submit">提&nbsp;&nbsp;交</button>
	      </div>
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