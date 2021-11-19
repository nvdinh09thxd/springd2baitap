<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Login</title>
		<link href="${pageContext.request.contextPath}/resources/baitap4/css/reset.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/resources/baitap4/css/style.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<div class="wrapper">
			<h2>Login</h2>
			<div>
				<h3 style="color: red; text-align: center">${msg}</h3>
			</div>
			<form action="<%=request.getContextPath()%>/login" method="post">
				<label>Tên đăng nhập:</label> 
				<input type="text" name="username" /><br /><br /> 
				<label>Mật khẩu:</label> 
				<input type="password" name="password" /><br /><br />
				<input type="submit" value="Đăng nhập" />
			</form>
		</div>
	</body>
</html>