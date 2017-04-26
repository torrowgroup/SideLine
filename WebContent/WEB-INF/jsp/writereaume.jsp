<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>${reaumePrompt}</center>
	<form action="${path}/ReaumeServlet?ask=write" method="post">
		<table>
			<tr>
				<td>姓名：</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>age：</td>
				<td><input type="text" name="age"></td>
			</tr>
			<tr>
				<td>sex：</td>
				<td>
					<input type="radio" name="sex" value="男">男
					<input type="radio" name="sex" value="女">女
				</td>
			</tr>
			<tr>
				<td>地区:</td><td><input type="text" name="location"></td>
			</tr>
			<tr>
				<td>最高学历：</td>
				<td><input type="radio" name="education" value="大学">大学</td>
			</tr>
			<tr>
				<td>工作经验：</td>
				<td><input type="radio" name="experience" value="一">一年</td>
			</tr>
			<tr>
				<td>电话：</td>
				<td><input type="text" name="phone"></td>
			</tr>
			<tr>
				<td>意向：</td>
				<td><input type="text" name="skill"></td>
			</tr>
			<tr>
				<td>自我简介：</td>
				<td><input type="text" name ="introduce"></td>
			</tr>
			<tr>
				<td><input type="submit" value="提交"></td>
			</tr>
		</table>
	</form>
</body>
</html>