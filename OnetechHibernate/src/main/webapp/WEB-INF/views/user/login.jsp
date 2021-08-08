	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>

<html>
<head>
	<title>Registation Form * Form Tutorial</title>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
	
	${sta }
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h2 class="text-center">Đăng nhập</h2>
			</div>
			<div class="panel-body">
			<form:form action="login" modelAttribute="user" method="POST">  
				<div class="form-group">
				  <label for="usr">Tài khoản:</label>
				  <form:input required="true" type="text" class="form-control" path="username"/>
				</div>
				<div class="form-group">
				  <label for="pwd">Mật khẩu:</label>
				  <form:input required="true" type="password" class="form-control" path="password" id="password"/>
				</div>
				<button class="btn btn-success">Đăng nhập</button>
				</form:form>
		</div>
	</div>
</body>
</html>