<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome</title>
</head>
<body>
	<c:choose>
		<c:when test="${not empty userLogin && userLogin.getUsername().equals('admin') && userLogin.getPassword().equals('123456')}">
			<p>Chào! Admin</p>
		</c:when>
		<c:otherwise>
			<div>
				<p>Invalid username or password</p>
			</div>
		</c:otherwise>
	</c:choose>
</body>
</html>