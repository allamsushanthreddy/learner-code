<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="http://cdn.jdselivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h3>student Record</h3>
		<form action="/TestProject/student/save" method="POST">
			<input type="hidden" name="id" value="${student.id }" />
			<div class="mb-3">
				<label for="exampleInputEmail1" class="from-label">Name</label> <input
					type="text" name="name" value="${student.name }"
					class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp">
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="from-label">Country</label>
				<input type="text" class="form-control" id="exampleInputPassword1"
					name="country" value="${student.country }">
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="from-label">Department</label>
				<input type="text" name="department" value="${student.department }"
					class="form-control" id="exampleInputPassword1" name="department">
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
</body>
</html>