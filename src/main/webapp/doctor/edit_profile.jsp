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
<title>doctor Edit</title>
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
	// Check if the "doctObj" attribute is null in the session
	if (session.getAttribute("doctObj") == null) {
		// Redirect to doctor_login.jsp if "doctObj" is not found in session
		response.sendRedirect("../doctor_login.jsp");
	}
	%>
	<div class="container p-4">

		<div class="row">
		
			<div class="col-md-4 ">
			
				<div class="card paint-card">
					
					<p class="text-center fs-3">Change Password</p>
					<%
					String succMsg = (String) session.getAttribute("succMsg");
					if (succMsg != null) {
					%>
					<p class="text-center text-success fs-3"><%=succMsg%></p>
					<%
					session.removeAttribute("succMsg");
					}
					%>

					<%
					String errorMsg = (String) session.getAttribute("errorMsg");
					if (errorMsg != null) {
					%>
					<p class="text-center text-danger fs-3"><%=errorMsg%></p>
					<%
					session.removeAttribute("errorMsg");
					}
					%>
					<div class="card-body">
						<form action="../docChangedPassword" method="post">
							<div class="mb-3">
								<label>Enter New Password</label> <input type="text"
									name="newPassword" class="form-control" required>
							</div>
							<div class="mb-3">
								<label>Enter Old Password</label> <input type="text"
									name="oldPassword" class="form-control" required>
							</div>
							<input type="hidden" value="${doctObj.id }" name="uid">
							<button class="btn btn-success col-md-12">Change
								Password</button>
						</form>
					</div>
				</div>
			</div>

			<div class="col-md-5 offset-md-2">
				<div class="card paint-card">
				<p class="fs-3 text-center">EditProfile</p>
				<%
					String succMsgd = (String) session.getAttribute("succMsgd");
					if (succMsgd != null) {
					%>
					<p class="text-center text-success fs-3"><%=succMsgd%></p>
					<%
					session.removeAttribute("succMsgd");
					}
					%>

					<%
					String errorMsgd = (String) session.getAttribute("errorMsgd");
					if (errorMsgd != null) {
					%>
					<p class="text-center text-danger fs-3"><%=errorMsgd%></p>
					<%
					session.removeAttribute("errorMsgd");
					}
					%>
					<div class="card-body">
						<form action="../doctorUpdateProfile" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label><input required value="${doctObj.fullname }"
									name="fullname" type="text" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">DOB</label><input required name="dob" value="${doctObj.dob }"
									type="date" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Qualification</label><input required value="${doctObj.qualification }"
									name="quali" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Specialist</label><select required 
									name="spec" type="text" class="form-control">
									<option>${doctObj.specialist }</option>

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
								<label class="form-label">E-mail address</label><input required value="${doctObj.email }"
									readonly name="email" type="email" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Mobile No.</label><input required value="${doctObj.mobileno }"
									name="mobno" type="text" class="form-control">
							</div>
							<input type="hidden" name="id" value="${doctObj.id}">



							<button type="submit" class="btn bg-success text-white col-md-12">submit</button>

						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>