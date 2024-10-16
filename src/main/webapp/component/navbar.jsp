<%@page import="com.entity.User"%>
<%@page isELIgnored="false" %>

<nav class="navbar navbar-expand-lg bg-success navbar-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp" ><i class="fa-solid fa-hospital"></i> MEDICO</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">

      <%
        // Fetch the user object from the session
        Object userObj = session.getAttribute("userObj");
        if (userObj == null) {
      %>
      
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="admin_login.jsp"><i class="fa-solid fa-right-to-bracket"></i> Admin</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="doctor_login.jsp">Doctor</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Appointment</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="user_login.jsp">User</a>
        </li>
      
      <%
        } else {
      %>
      
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="doctor_login.jsp">Appointment</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">View Appointment</a>
        </li>
        
        <div class="dropdown">
          <button class="btn btn-light dropdown-toggle" type="button"
            id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
            <i class="fa-solid fa-user-circle "></i> 
            <%= ((User) userObj).getFullname() %> <!-- Assuming `userObj` is of type `User` and has a `getFullname()` method -->
          </button> 
          
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Change Password</a></li>
            <li><a class="dropdown-item" href="userLogout">Logout</a></li>
          </ul>
        </div>  

      <%
        }
      %>
        
      </ul>
    </div>
  </div>
</nav>
