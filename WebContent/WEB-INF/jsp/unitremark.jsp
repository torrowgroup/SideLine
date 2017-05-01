<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>填写评价</title>
<link rel="stylesheet" href="./staticFile/css/bootstrap.css">
<link rel="stylesheet" href="./staticFile/css/textbox.css">
</head>
<body>
<div class="container">
  <div class="row">
     <div class="col-lg-1 col-lg-offset-1 col-md-2  col-xs-2 col-xs-offset-1">
             <a> <button class="btn btn-primary" type="button">商家评价</button></a>
        </div>
        <div class="col-lg-3 col-lg-offset-5 col-md-5 scol-md-offset-3 col-xs-5  col-xs-offset-1">
            <p>当前位置：我要求职>>填写简历</p>
        </div>
        <div class="col-lg-2 col-md-3 col-xs-3">
            <p>欢迎登录本系统</p>
        </div>
  </div>
</div>
<center>${hirePrompt }</center>
<div class="body-one">
 <div class="container-one">
 	<form action="${path}/HireServlet?ask=unitremark&id=${id}" method="post">
	   <div class="row">
	       <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-xs-6 col-xs-offset-3">
	            <textarea name="remark" class="form-control" rows="5" cols="18" style="margin-left:2%;"></textarea>
	       </div>  
	   </div>
	   <div class="row">
	      <div class="col-lg-1 col-lg-offset-9 col-md-1 col-md-offset-9 col-xs-1 col-xs-offset-9">
	              <button class="btn btn-primary" type="submit">提&nbsp;&nbsp;交</button>
	       </div>
	   </div>
   </form>
 </div>
</div>
</body>
</html>
    
    
    
    
    
    
    
    
    
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<!-- <title>Insert title here</title> -->
<!-- </head> -->
<!-- <body> -->
<%-- 	<center>${hirePrompt }</center> --%>
<%-- 	<form action="${path}/HireServlet?ask=unitremark&id=${id}" method="post"> --%>
<!-- 		<textarea cols="20" rows="20" name="remark"></textarea> -->
<!-- 		<input type="submit" value="提交"> -->
<!-- 	</form> -->
<!-- </body> -->
<!-- </html> -->