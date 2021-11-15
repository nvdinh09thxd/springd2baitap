<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BT1</title>
<link href="${pageContext.request.contextPath}/resources/baitap1/css/reset.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/baitap1/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="wrapper">

		<h3>In câu chào</h3>
		<div>
			<h3 style="color: red; text-align: center">${msg}</h3>
		</div>
		<form action="${pageContext.request.contextPath}/greeting" method="POST">
			<label>Nhập tên: </label>
			<input type="text" name="name" /><br /> <br />
			<input type="submit" value="In Câu Chào" />
		</form>

		<c:if test="${not empty name}">
			<p>
				Câu chào: <strong>Chào bạn ${name}</strong>
			</p>
		</c:if>
	</div>
</body>
</html>