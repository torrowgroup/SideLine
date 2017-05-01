<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
       
       <!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>我要招聘</title>
<link rel="stylesheet" href="./staticFile/css/bootstrap.css">
<link rel="stylesheet" href="./staticFile/css/recruit.css">
</head>
<script type="text/javascript"> 
function setsubmit1() 
{ 
if(mylink.value == 111)
window.location='/SideLine/RecruitServlet?ask=selectallowrecruit';
if(mylink.value == 0) 
window.location='/SideLine/RecruitServlet?ask=time&time=上午'; 
if(mylink.value == 1) 
window.location='/SideLine/RecruitServlet?ask=time&time=下午'; 
if(mylink.value == 2) 
window.location='/SideLine/RecruitServlet?ask=time&time=全天'; 
} 
function setsubmit2() 
{ 
if(mylink.value == 111)
	window.location='/SideLine/RecruitServlet?ask=selectallowrecruit';
if(mylink2.value == 3) 
	window.location='/SideLine/RecruitServlet?ask=selectbylocation&location=北京市'; 
if(mylink2.value == 4) 
	window.location='/SideLine/RecruitServlet?ask=selectbylocation&location=上海市'; 
if(mylink2.value == 5) 
	window.location='/SideLine/RecruitServlet?ask=selectbylocation&location=广东'; 
if(mylink2.value == 6) 
	window.location='/SideLine/RecruitServlet?ask=selectbylocation&location=深圳市'; 
if(mylink2.value == 7) 
	window.location='/SideLine/RecruitServlet?ask=selectbylocation&location=香港'; 
if(mylink2.value == 8) 
	window.location='/SideLine/RecruitServlet?ask=selectbylocation&location=杭州市';
if(mylink2.value == 9) 
	window.location='/SideLine/RecruitServlet?ask=selectbylocation&location=天津市'; 
if(mylink2.value == 10) 
	window.location='/SideLine/RecruitServlet?ask=selectbylocation&location=武汉市'; 
if(mylink2.value == 11) 
	window.location='/SideLine/RecruitServlet?ask=selectbylocation&location=温州市';  
if(mylink2.value == 12) 
	window.location='/SideLine/RecruitServlet?ask=selectbylocation&location=成都市'; 
if(mylink2.value == 13) 
	window.location='/SideLine/RecruitServlet?ask=selectbylocation&location=石家庄市'; 
if(mylink2.value == 14) 
	window.location='/SideLine/RecruitServlet?ask=selectbylocation&location=无锡市';  
if(mylink2.value == 15) 
	window.location='/SideLine/RecruitServlet?ask=selectbylocation&location=大连市'; 
if(mylink2.value == 16) 
	window.location='/SideLine/RecruitServlet?ask=selectbylocation&location=沈阳市'; 
if(mylink2.value == 17) 
	window.location='/SideLine/RecruitServlet?ask=selectbylocation&location=青岛市';
if(mylink2.value == 18) 
	window.location='/SideLine/RecruitServlet?ask=selectbylocation&location=宁波市';
if(mylink2.value == 19) 
	window.location='/SideLine/RecruitServlet?ask=selectbylocation&location=珠海市'; 
if(mylink2.value == 20) 
	window.location='/SideLine/RecruitServlet?ask=selectbylocation&location=合肥市'; 
if(mylink2.value == 21) 
	window.location='/SideLine/RecruitServlet?ask=selectbylocation&location=南京市'; 
} 
</script>  
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
 <div class="con-one">
   
   <div class="row">
      <div class="col-lg-3 col-lg-offset-3 col-md-4 col-md-offset-3 col-xs-3 col-xs-offset-3" style="margin-left:31%;">
        <div class="col-lg-6 col-md-6  col-xs-6">
            <span><input type="button" id="btn" value="按时间查询" onclick="setsubmit1(this)" /></span>
        </div>
        <div class="col-lg-6 col-md-6  col-xs-6">
           <select class="form-control" name="mylink" id="mylink" style="margin-left:-40px;" >
                      <option value="111">全部招聘信息</option>
                      <option  value="0">上午</option>
                      <option  value="1">下午</option>
                      <option  value="2">全天</option>
           </select>
           
         </div>
      </div>
      <div class="col-lg-3  col-md-3  col-xs-3">
        <div class="col-lg-6 col-md-6  col-xs-6">
            <span><input type="button" id="btn" value="按地点查询" onclick="setsubmit2(this)" /></span>
        </div>
        <div class="col-lg-6 col-md-6  col-xs-6">
           <select  class="form-control" name="mylink2" id="mylink2" style="width:125px;height:33px;margin-left:-50px;"> 
		          		<option value="111">全部招聘信息</option>
		          		<option value="3">北京市</option>
		          		<option value="4">上海市</option>
		          		<option value="5" >广州市</option>
		          		<option value="6" >深圳市</option>
		          		<option value="7" >香港市</option>
		          		<option value="8" >天津市</option>
		          		<option value="9" >杭州市</option>
		          		<option value="10" >武汉市</option>
		          		<option value="11" >温州市</option>
		          		<option value="12" >成都市</option>
		          		<option value="13" >石家庄市</option>
		          		<option value="14" >无锡市</option>
		          		<option value="15" >大连市</option>
		          		<option value="16" >沈阳市</option>
		          		<option value="17" >青岛市</option>
		          		<option value="18" >宁波市</option>
		          		<option value="19" >珠海市</option>
		          		<option value="20" >合肥市</option>
		          		<option value="21" >南京市</option>
		    </select>
         </div>
      </div>
   </div>
</div>
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
       </tr>
      </thead>
      <tbody>
       			<c:forEach items="${allAllowRecruit}" var="allAllowRecruits">
				<tr>
					<td>${allAllowRecruits.unit}</td>
					<td>${allAllowRecruits.name}</td>
					<td>${allAllowRecruits.work}</td>
					<td>${allAllowRecruits.requirement}</td>
					<td>${allAllowRecruits.time}</td>
					<td>${allAllowRecruits.location}</td>
					<td>${allAllowRecruits.salary}</td>
					<td>${allAllowRecruits.phone}</td>
					<td><a href="${path}/HireServlet?recruitId=${allAllowRecruits.id}&ask=apply">申请</a></td>
				</tr>
			</c:forEach>
      </tbody>
    </table>
</div>
</body>
</html>