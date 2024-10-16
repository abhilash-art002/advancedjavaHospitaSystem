<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Specialist"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.SpecialistDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>


</head>
<body>
	<%@include file="navbar.jsp"%>

	<div class="container-fluid mt-4">
		<div class="row">
			<div class="col-md-5 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">

						<p class="fs-3 text-center">Add Doctor</p>

						<%
						// Fetch the success and error messages from the session
						String errorMsg = (String) session.getAttribute("errorMsg");
						String sucMsg = (String) session.getAttribute("sucMsg");

						// Display the error message if it exists
						if (errorMsg != null) {
						%>
						<p class="fs-3 text-center text-danger"><%=errorMsg%></p>
						<%
						// Remove the error message from the session
						session.removeAttribute("errorMsg");
						}

						// Display the success message if it exists
						if (sucMsg != null) {
						%>
						<p class="fs-3 text-center text-success"><%=sucMsg%></p>
						<%
						// Remove the success message from the session
						session.removeAttribute("succMsg");
						}
						%>

						<form action="../addDoctor" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label><input required
									name="fullname" type="text" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">DOB</label><input required name="dob"
									type="date" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Qualification</label><input required
									name="quali" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Specialist</label><select required
									name="spec" type="text" class="form-control">
									<option>---select---</option>

									<%
									SpecialistDao dao = new SpecialistDao(DBConnect.getConn());
									List<Specialist> list = dao.getAllSpecialist();
									for (Specialist s : list) {
									%>

									<option><%=s.getSpecialistName()%></option>

									<%
									}
									%>


								</select>
							</div>
							<div class="mb-3">
								<label class="form-label">E-mail address</label><input required
									name="email" type="email" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Mobile No.</label><input required
									name="mobno" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Password</label><input required
									name="password" type="password" class="form-control">
							</div>


							<button type="submit" class="btn bg-success text-white col-md-12">submit</button>

						</form>

					</div>



				</div>




			</div>

			
		</div>
	</div>



</body>
</html>