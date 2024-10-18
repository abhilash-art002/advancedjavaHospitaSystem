<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signup</title>
<%@include file="component/allcss.jsp"%>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="login-form-07/fonts/icomoon/style.css">

<link rel="stylesheet" href="login-form-07/css/owl.carousel.min.css">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="login-form-07/css/bootstrap.min.css">

<!-- Style -->
<link rel="stylesheet" href="login-form-07/css/style.css">

</head>
<body>

<div class="content">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<img src="login-form-07/images/undraw_remotely_2j6y.svg" alt="Image" class="img-fluid">
			</div>
			<div class="col-md-6 contents">
				<div class="row justify-content-center">
					<div class="col-md-8">
						<div class="mb-4">
							<h3>Register</h3>
							<p class="mb-4">Lorem ipsum dolor sit amet elit. Sapiente sit aut eos consectetur adipisicing.</p>
						</div>

						<%
							String sucMsg = (String) session.getAttribute("sucMsg");
							if (sucMsg != null) {
						%>
								<p class="text-center text-success fs-3"><%= sucMsg %></p>
								<%
									session.removeAttribute("sucMsg");
								}
						%>

						<%
							String failMsg = (String) session.getAttribute("failMsg");
							if (failMsg != null) {
						%>
								<p class="text-center text-danger fs-3"><%= failMsg %></p>
								<%
									session.removeAttribute("failMsg");
								}
						%>

						<form action="user_register" method="post">
							<div class="form-group first">
								<label for="username">Fullname</label>
								<input type="text" name="fullname" class="form-control" id="useremail">
							</div>
							<div class="form-group first">
								<label for="username">Email</label>
								<input type="email" name="email" class="form-control" id="useremail">
							</div>
							<div class="form-group last mb-4">
								<label for="password">Password</label>
								<input type="password" name="password" class="form-control" id="password">
							</div>

							<input type="submit" value="Log In" class="btn btn-block btn-primary">
						</form>
						<br>Already Have an account? <a href="user_login.jsp" class="text-decoration-none">Now Login</a>

					</div>
				</div>

			</div>

		</div>
	</div>
</div>

<script src="login-form-07/js/jquery-3.3.1.min.js"></script>
<script src="login-form-07/js/popper.min.js"></script>
<script src="login-form-07/js/bootstrap.min.js"></script>
<script src="login-form-07/js/main.js"></script>

</body>
</html>
