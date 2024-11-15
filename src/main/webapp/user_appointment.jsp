<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>
<%@page import="javax.servlet.http.HttpSession"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="component/allcss.jsp"%>
<%@ include file="component/navbar.jsp"%>

<!DOCTYPE html>
<html>
<head>
<title>User Appointment</title>
<style>
.paint-card {
	box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.3);
}

.backImg {
  background: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)),
  url('image/fun-bg.jpg');
  height: 150px; /* Adjust height as needed */
  width: 100%;
  background-size: cover;
  background-position: center; /* Ensures the background is centered */
  background-repeat: no-repeat;
}

</style>
</head>
<body>

	<div class="container-fulid backImg p-5">
		<p class="text-center fs-2 text-white">Book Your Appointment</p>
	</div>

	<div class="container p-3">
		<div class="row">
			<div class="col-md-6 p-5">
				<img alt="" src="image/doct.jpeg">
			</div>

			<div class="col-md-6">
				<div class="card paint-card">
					<div class="card-body">
						<p class="text-center fs-3">User Appointment</p>
						<%
						String sucMsg = (String) session.getAttribute("sucMsg");
						if (sucMsg != null) {
						%>
						<p class="text-center text-success fs-3"><%=sucMsg%></p>
						<%
						session.removeAttribute("sucMsg");
						}
						%>

						<%
						String failMsg = (String) session.getAttribute("failMsg");
						if (failMsg != null) {
						%>
						<p class="text-center text-danger fs-3"><%=failMsg%></p>
						<%
						session.removeAttribute("failMsg");
						}
						%>



						<form class="row g-3" action="appAppointment" method="post">

							<!-- Assuming 'userObj' is in the session and it's a valid user object -->
							<input type="hidden" name="userid" value="${userObj.id}" />

							<div class="col-md-6">
								<label for="fullname" class="form-label">Full Name</label> <input
									required type="text" class="form-control" id="fullname"
									name="fullname" value="${userObj.fullname}">
							</div>

							<div class="col-md-6">
								<label for="gender" class="form-label">Gender</label> <select
									class="form-control" id="gender" name="gender" required>
									<option value="male">Male</option>
									<option value="female">Female</option>
								</select>
							</div>

							<div class="col-md-6">
								<label for="age" class="form-label">Age</label> <input required
									type="number" class="form-control" id="age" name="age">
							</div>

							<div class="col-md-6">
								<label for="appoint_date" class="form-label">Appointment
									Date</label> <input type="date" class="form-control" id="appoint_date"
									name="appoint_date" required>
							</div>

							<div class="col-md-6">
								<label for="email" class="form-label">Email</label> <input
									required type="email" class="form-control" id="email"
									name="email" value="${userObj.email}">
							</div>

							<div class="col-md-6">
								<label for="phno" class="form-label">Phone No</label> <input
									maxlength="10" required type="number" class="form-control"
									id="phno" name="phno">
							</div>

							<div class="col-md-6">
								<label for="diseases" class="form-label">Diseases</label> <input
									required type="text" class="form-control" id="diseases"
									name="diseases">
							</div>

							<div class="col-md-6">
								<label for="doctor" class="form-label">Doctor</label> <select
									required class="form-control" id="doctor" name="doct">
									<option value="">--select--</option>

									<!-- Fetching list of doctors dynamically from the backend -->
									<%
									DoctorDao dao = new DoctorDao(DBConnect.getConn());
									List<Doctor> doctorList = dao.getAllDoctor();
									for (Doctor doctor : doctorList) {
									%>
									<option value="<%=doctor.getId()%>">
										<%=doctor.getFullname()%> (<%=doctor.getSpecialist()%>)
									</option>
									<%
									}
									%>
								</select>
							</div>

							<div class="col-md-12">
								<label for="address" class="form-label">Full Address</label>
								<textarea required name="address" id="address"
									class="form-control" rows="3"></textarea>
							</div>

							<%
							// Fetch the user object from the session
							Object userObject = session.getAttribute("userObj");

							// If userObj is empty (null), display a link for login
							if (userObj == null) {
							%>
							<a href="user_login.jsp"
								class="col-md-6 offset-md-3 btn btn-success">Submit</a>
							<%
							} else {
							// If userObj is not empty, display a submit button
							%>
							<button class="col-md-6 offset-md-3 btn btn-success">Submit</button>
							<%
							}
							%>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>



</body>
</html>
