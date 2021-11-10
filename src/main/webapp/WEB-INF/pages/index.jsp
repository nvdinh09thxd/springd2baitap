<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VinaEnter Place</title>
</head>
<body>
	<c:choose>
		<c:when test="${arPlace ne null}">
			<table border="1">
				<thead>
					<tr>
						<th>ID</th>
						<th>Place</th>
						<th>Date create</th>
						<th>Student</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${arPlace}" var="place">
						<tr>
							<td>${place.id}</td>
							<td>${place.place}</td>
							<td><fmt:formatDate value="${place.date_create}"
									pattern="dd-MM-yyyy" /></td>
							<td>${place.student}</td>
						</tr>
					</c:forEach>
					<tr>
						<td colspan="3" style="text-align: center">SUM</td>
						<td>${sum}</td>
					</tr>
				</tbody>
			</table>
		</c:when>
		<c:otherwise>
			<div>
				<p>Data empty</p>
			</div>
		</c:otherwise>
	</c:choose>
</body>
</html>