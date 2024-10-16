<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Page</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>


</head>
<body>
	<%@include file="navbar.jsp"%>

	

	<%
    // Check if adminObj is not in the session, redirect to login page
    Object adminObj = session.getAttribute("adminObj");
    if (adminObj == null) {
        response.sendRedirect("../admin.login.jsp");
    }
%>

<div class="container p-5">

    <p class="text-center fs-3">Admin Dashboard</p>

    <%
        // Retrieve success message from session
        String sucMsg = (String) session.getAttribute("sucMsg");
        if (sucMsg != null) {
    %>
        <p class="text-center text-success fs-3"><%= sucMsg %></p>
        <%
            session.removeAttribute("sucMsg"); // Remove success message after displaying it
        }
    %>

    <%
        // Retrieve failure message from session
        String failMsg = (String) session.getAttribute("failMsg");
        if (failMsg != null) {
    %>
        <p class="text-center text-danger fs-3"><%= failMsg %></p>
        <%
            session.removeAttribute("failMsg"); // Remove failure message after displaying it
        }
    %>



	




		<div class="row">
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fas fa-user-md fa-3x"></i><br>
						<p class="fs-4 text-center">
							Doctor <br>5
						</p>

					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fas fa-user-circle fa-3x"></i><br>
						<p class="fs-4 text-center">
							User <br>43
						</p>

					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fa-regular fa-calendar-check fa-3x"></i></i><br>
						<p class="fs-4 text-center">
							Total Appointment <br>453
						</p>

					</div>
				</div>
			</div>
			<div class="col-md-4 mt-2">
				<div class="card paint-card " data-bs-toggle="modal"
					data-bs-target="#exampleModal">
					<div class="card-body text-center text-success">
						<i class="fa-regular fa-calendar-check fa-3x"></i><br>
						<p class="fs-4 text-center">
							Specialist <br>34
						</p>

					</div>
				</div>
			</div>
		</div>
	</div>


	</div>



	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">AddSpecialist</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form action="../addSpecialist" method="post">

						<div class="form-group">
							<label>Enter Specialist Name</label> <input type="text"
								name="specName" class="from-control">

						</div>

						<div class="text-center mt-3">
							<button type="submit" class="btn btn-primary">Add</button>
						</div>


					</form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>

				</div>
			</div>
		</div>
	</div>



</body>
</html>