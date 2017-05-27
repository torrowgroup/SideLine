<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>大学生兼职网首页</title>
</head>
<frameset   rows="20%,80%"  frameborder="0" border="0" framespacing="0" name="head" id="head">
	<frame  src="./staticFile/iframe/head.html" scrolling="no"/>
 	<frameset cols="10%,77%"  frameborder="0"  framespacing="0" name="caidan">
		<frame src="./staticFile/iframe/caidan.html" scrolling="no"/>
    	<frame  name="mainFrame" id="zj"  src="${path}/RecruitServlet?ask=selectallowrecruit" scrolling="yes" frameborder="1"/>
	</frameset>
	 <noframes>              
                你的浏览器不支持frame              
     </noframes>
</frameset>
<body>
</body>
</html>