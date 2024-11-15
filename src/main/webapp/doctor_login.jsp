<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Doctor Login</title>
    <%@ include file="component/allcss.jsp"%>
    
    <!-- Required meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="login-form-07/fonts/icomoon/style.css">
    <link rel="stylesheet" href="login-form-07/css/owl.carousel.min.css">
    <link rel="stylesheet" href="login-form-07/css/bootstrap.min.css">
    <link rel="stylesheet" href="login-form-07/css/style.css">
</head>
<body>
<%@include file="component/navbar.jsp"%>
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
                                <h3>Doctor Login </h3>
                                <p class="mb-4">Please enter your credentials to log in.</p>
                            </div>
                            
                            <!-- Display error message if it exists -->
                            <%
                                String failMsg = (String) session.getAttribute("failMsg");
                                if (failMsg != null) {
                            %>
                                <div class="alert alert-danger">
                                    <%= failMsg %>
                                </div>
                            <%
                                session.removeAttribute("failMsg");
                                }
                            %>
                            
                            <!-- Login form -->
                            <form action="doctorLogin" method="post">
                                <div class="form-group first">
                                    <label for="email">Email</label>
                                    <input type="email" name="email" class="form-control" id="useremail" required>
                                </div>
                                <div class="form-group last mb-4">
                                    <label for="password">Password</label>
                                    <input type="password" name="password" class="form-control" id="password" required>
                                </div>
                                <input type="submit" value="Log In" class="btn btn-block btn-primary">
                            </form>

                            <br>Don't have an account? <a href="signup.jsp" class="text-decoration-none">Create one</a>
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
