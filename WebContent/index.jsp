<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>登录界面</title>
<link rel="stylesheet" href="./staticFile/css/bootstrap.css">
<link rel="stylesheet" href="./staticFile/css/index-one.css">
<script type="text/javascript">
 		function reloadCode(){
 			var time=new Date().getTime();
			document.getElementById("imagecode").src="<%=request.getContextPath()%>/ImageServlet?d="+time;
 	}
</script>
</head>

<body>
<div class="container">
   <div class="header">
            <p>大学生兼职网</p>
  </div> 
  <div class="body">
      <div class="box">
                  <div class="input-one">
        		        <span class="headerb1" onclick="dujuan('list-one')"><a href="#">注册</a></span>
				        <span  class="headerb2" onclick="dujuan()"><a href="#">登录</a></span>
                  </div>
                 <div id="list-one">
                   <form class="form-inline" action="${path}/ResisterServlet" method="post" target="_top">
                    <div class="input-two" >
                               <label for="account" >账号</label>
                               <input type="text" name="username" class="form-control"  placeholder="请输入用户名">
                    </div>
                    <br>
                    <div class="input-three">
                                 <label for="password" >密码</label>
                                 <input type="password" name="password" class="form-control"  placeholder="请输入密码">
                    </div>
                    <div class="input-four">
                       <button class="btn  btn-primary one" type="submit">注&nbsp;&nbsp;册</button>
                       <button class="btn  btn-primary" type="reset">重&nbsp;&nbsp;置</button>
                    </div>
                </form>
                 </div>  
                 <div id="list-two">
                 <form class="form-inline"  action="${path}/LoginServlet?ask=login" method="post" target="_top" onsubmit="return check()"> 
                    <div class="input-two">
                               <label for="account" >账&nbsp;&nbsp;&nbsp;&nbsp;号</label>
                               <input type="text" name="username" class="form-control"  placeholder="请输入用户名">
                    </div>
                     <br>
                    <div class="input-three">
                                 <label for="password" >密&nbsp;&nbsp;&nbsp;&nbsp;码</label>
                                 <input type="password" name="password" class="form-control"  placeholder="请输入密码">
                    </div>
                     <br>
                    <div class="input-four">
                                <label for="password" >验证码</label>
                             	<input type="text" name="checkcode" class="form-control"  placeholder="" style="width:20%;"> <span>${userPrompt}</span>
                    </div>
                     <br>
                    <div class="input-five">
                    	<img alt="验证码" id="imagecode" src="${path}/ImageServlet" width="120" height="40">
	 					<a href="javascript:reloadCode();">看不清楚</a>
	 					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="appeal.jsp">找回密码</a>
                   </div>
                    <br>
                    <div class="input-six">
                      <button class="btn  btn-primary one" type="submit">登&nbsp;&nbsp;录</button>
                       <button class="btn  btn-primary" type="reset">重&nbsp;&nbsp;置</button>
                   </div>
                 </form>
    </div>
  </div>
</div>

			<ul class="bg-bubbles">
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
			</ul>

<script src="./staticFile/js/jquery-2.1.4.js"></script>
<script src="./staticFile/js/bootstrap.js"></script>
<script type="text/javascript">
    function dujuan(select){
        if(select == 'list-one'){
            $('#list-one').show();
            $('#list-two').hide();
        }else{
            $('#list-two').show();
            $('#list-one').hide();
        }

    }

</script>
</body>
</html>