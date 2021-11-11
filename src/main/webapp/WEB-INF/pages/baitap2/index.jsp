<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Tính tổng</title>
		<link href="${pageContext.request.contextPath}/resources/baitap2/css/reset.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/baitap2/css/style.css" rel="stylesheet" type="text/css">
		<script src="${pageContext.request.contextPath}/resources/baitap2/js/jquery-3.3.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/baitap2/js/jquery.validate.min.js"></script>
		<style>
			.error {
				color: red;
			}
		</style>
	</head>
	<body>
		<div class="wrapper">
			<h3>Tính tổng</h3>
			<form action="${pageContext.request.contextPath}/figure-out" method="post">
				<label>Nhập dãy số: </label>
				<input type="text" name="dayso" /><br /> 
				<input type="submit" value="Tinh" />
			</form>
			<p>
				<label>Tổng:  </label>
				<input type="text" name="dayso" value="${sum}" />
			</p>
		</div>
		<script type="text/javascript">
				$(function() {
					$('form').validate({
						rules : {
							"dayso" : {
								required : true,
							},
						},
						messages : {
							"dayso" : {
								required : "Yêu cầu nhập",
							},
						},
					})
				})
		</script>
	</body>
</html>