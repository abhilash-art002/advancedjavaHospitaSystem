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
			
			<div class="col-md-12">

				<div class="card paint-card">
					<div class="card-body">

						<p class="fs-3 text-center">Doctor Details</p>
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
						<table class="table">
							<thead>

								<tr>
									<th scope="col">Full name</th>
									<th scope="col">DOB</th>
									<th scope="col">Qualification</th>
									<th scope="col">Specialist</th>
									<th scope="col">Email</th>
									<th scope="col">Mob no.</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>

								<%
								DoctorDao dao2 = new DoctorDao(DBConnect.getConn());
								List<Doctor> list2 = dao2.getAllDoctor();
								for (Doctor d : list2) {
								%>


								<tr>

									<td><%=d.getFullname()%></td>
									<td><%=d.getDob()%></td>
									<td><%=d.getQualification()%></td>
									<td><%=d.getSpecialist()%></td>
									<td><%=d.getEmail()%></td>
									<td><%=d.getMobileno()%></td>
									<td><a href="edit_doctor.jsp?id=<%=d.getId() %>" class="btn btn-sm btn-primary">Edit</a> <a
										href="../deleteDoctor?id=<%=d.getId() %>" class="btn btn-sm btn-danger">Delete</a></td>
								</tr>



								<%
								}
								%>

							</tbody>

						</table>


					</div>

				</div>

			</div>
		</div>
	</div>



</body>
</html>