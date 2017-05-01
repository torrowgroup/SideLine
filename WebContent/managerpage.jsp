<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>大学生兼职网管理员登录</title>
<link rel="stylesheet" href="./staticFile/css/bootstrap.css">
<link rel="stylesheet" href="./staticFile/css/index-two.css">
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
            <p>大学生兼职网后台管理系统</p>
  </div> 
  <div class="body">
      <div class="box">
                <form class="form-inline" action="${path}/LoginServlet?ask=managerlogin" method="post" target="_top" onsubmit="return check()">  
                 <div id="list-two">
                    <div class="input-two">
                               <label for="account" >账&nbsp;&nbsp;&nbsp;&nbsp;号</label>
                               <input name="username" id="username" placeholder="请输入用户名" autocomplete class="form-control">
<!--                                <input type="text" class="form-control"  placeholder="请输入用户名"> -->
                    </div>
                    <br>
                    <div class="input-three">
            	        
                                 <label for="password" >密&nbsp;&nbsp;&nbsp;&nbsp;码</label>
                                 <input type="password" name="password" id="password" placeholder="请输入密码" class="form-control">
                    </div>
                    <br>
                    <div class="input-four">
                                 <label for="password" >验证码</label>
                                 <input type="text" name="checkcode" id="checkcode" class="form-control" placeholder="请输入验证码" ><br>${managerPrompt}
<!--                              <input type="text" class="form-control"  placeholder="" style="width:20%;"> <span>验证码错误，请重新填入</span> -->
                    </div>
                    <br>
                    <div class="input-five">
                    				<img alt="验证码" id="imagecode" width="120" height="40"
					src="${path}/ImageServlet">
				<a href="javascript:reloadCode();">&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:20px">看不清楚</span></a><br>
<!--                        <img src="images/822721-20160720230416701-1768858575.png" width="120" height="50"> <span><a href="#">看不清楚</a></span> -->
                   </div>
                   <br>
                    <div class="input-six">
                      <button class="btn  btn-primary one" type="submit">登&nbsp;&nbsp;录</button>
                       <button class="btn  btn-primary" type="reset">重&nbsp;&nbsp;置</button>
                   </div>
                
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

<script src="js/jquery-2.1.4.js"></script>
<script src="js/bootstrap.js"></script>
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
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<!-- <title>Insert title here</title> -->
<!-- <script type="text/javascript"> -->
<!-- // 		function reloadCode(){ -->
<!-- // 			var time=new Date().getTime(); -->
<%-- <%-- 			document.getElementById("imagecode").src="<%=request.getContextPath()%>/ImageServlet?d="+time; --%> --%>
<!-- // 	} -->
<!-- </script> -->
<!-- </head> -->
<!-- <body> -->
<!-- 	<center> -->
<!-- 			<form -->
<%-- 				action="${path}/LoginServlet?ask=managerlogin" method="post" target="_top" onsubmit="return check()"> --%>
<!-- 				<p class="main"> -->
<!-- 					<lable>用户名:</lable> -->
<!-- 					<input name="username" id="username" placeholder="请输入用户名" autocomplete><br> -->
<!-- 					<br> -->
<!-- 					<lable>密&nbsp;&nbsp;&nbsp;码:</lable> -->
<!-- 					<input type="password" name="password" id="password" placeholder="请输入密码" size="18"><br> -->
<!-- 					<br> -->
<!-- 					<lable>验证码:</lable> -->
<%-- 					<input type="text" name="checkcode" id="checkcode"><br>${managerPrompt} --%>
<!-- 				</p> -->
<!-- 				<img alt="验证码" id="imagecode" -->
<%-- 					src="${path}/ImageServlet"> --%>
<!-- 				<a href="javascript:reloadCode();">看不清楚</a><br> -->
<!-- 				 <input type="submit" value="登录"> -->
<!-- 			</form> -->
<!-- 	</center> -->
<!-- </body> -->
<!-- </html> -->