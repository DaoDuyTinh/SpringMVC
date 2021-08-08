<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		<div class="panel panel-primary">
			<div class="panel-heading">
			${message }
				<h2 class="text-center">Đăng kí tài khoản mới</h2>
			</div>
			<div class="panel-body">
			<form:form action="register" modelAttribute="user" method="POST">  
				<div class="form-group">
				  <label for="usr">Tài khoản:</label>
				  <form:input required="true" type="text" class="form-control" path="username"/>
				</div>
				<div class="form-group">
				  <label for="email">Tên:</label>
				  <form:input required="true" type="text" class="form-control" path="name"/>
				</div>
				<div class="form-group">
				  <label for="birthday">Địa chỉ:</label>
				  <form:input type="text" class="form-control" path="address"/>
				</div>
				<div class="form-group">
				  <label for="pwd">Mật khẩu:</label>
				  <form:input required="true" type="password" class="form-control" path="password" id="password"/>
				</div>
				<div class="form-group">
				  <label for="confirmation_pwd">Xác nhận mật khẩu:</label>
				  <input required="true" type="password" class="form-control" id="confirmation_pwd">
				</div>
				<button class="btn btn-success">Đăng kí</button>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>