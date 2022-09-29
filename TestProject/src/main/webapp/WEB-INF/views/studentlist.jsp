<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <p>${student }</p> --%>
	<div>
		<a href="showFormForAdd">Add Student</a>

	</div>
	<table class="table">
		<tr>
			<th>Name</th>
			<th>Country</th>
			<th>Department</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${student}" var="student">
			<tr>
				<td>${student.name }</td>
				<td>${student.country }</td>
				<td>${student.department }</td>
				<td><a href="/TestProject/student/showFormForUpdate/?studentId=${student.id }">Update</a>
					<a href="/TestProject/student/delete/?studentId=${student.id }">Delete</a>
		</c:forEach>
	</table>
</body>
</html>