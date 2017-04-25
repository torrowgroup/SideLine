<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>${recruitPrompt}</center>
	<form action="${path}/RecruitServlet" method="post">
		<table>
			<tr>
				<td>发起单位：</td>
				<td><input type="text"name="unit" ></td>
			</tr>
			<tr>
				<td>姓名：</td>
				<td><input type="text"name="name" ></td>
			</tr>
			<tr>
				<td>工作：</td>
				<td><input type="text"name="work" ></td>
			</tr>
			<tr>
				<td>要求(实践经验)：</td>
				<td>
					<input type="radio"name="requirement" value="无" >
					<input type="radio"name="requirement" value="一年" >
					<input type="radio"name="requirement" value="一年以上" >
				</td>
			</tr>
			<tr>
				<td>phone：</td>
				<td><input type="text" name="phone" ></td>
			</tr>
			<tr>
				<td>工作时间：</td>
				<td><input type="radio" name="time" value="上午"></td>
				<td><input type="radio" name="time" value="下午"></td>
				<td><input type="radio" name="time" value="全天"></td>
			</tr>
			<tr>
				<td>地址：</td>
				<td>
					<input type="radio" name="location" >
				</td>
			</tr>
			<tr>
				<td>薪资/小时：</td>
				<td><input type="text" name="salary"></td>
			</tr>
			<tr>	
				<td><input type="submit" value="提交"></td>
			</tr>
		</table>
	</form>
</body>
</html>