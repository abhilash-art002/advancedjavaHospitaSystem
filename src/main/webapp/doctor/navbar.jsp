<%@page import="com.entity.Doctor"%> <!-- Assuming the Doctor class is in com.entity -->
<%@page isELIgnored="false" %>

<nav class="navbar navbar-expand-lg bg-success navbar-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp"><i class="fa-solid fa-hospital"></i> MEDICO</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">

      <%
        // Fetch the doctor object from the session
        Object doctorObj = session.getAttribute("doctObj");
        
        if (doctorObj == null) {
      %>
      
        <!-- Navigation for Guests (Not Logged In) -->
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="../index.jsp"><i class="fa-solid fa-right-to-bracket"></i> Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="patient.jsp"><i class="fa-solid fa-calendar-day"></i> Appointment</a>
        </li>

      <% 
        } else { 
          // Assuming doctorObj is an instance of Doctor and has a getFullname() method
          Doctor doctor = (Doctor) doctorObj;
          String doctorFullname = doctor.getFullname(); // Retrieve the doctor's full name
      %>
      
        <!-- Navigation for Doctor (Logged In) -->
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="doctor_index.jsp"><i class="fa-solid fa-house"></i> Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="patient.jsp"><i class="fa-solid fa-calendar-day"></i> PATIENT</a>
        </li>
        
        <div class="dropdown">
          <button class="btn btn-light dropdown-toggle" type="button"
            id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
            <i class="fa-solid fa-user-circle"></i> <%= doctorFullname %>
          </button>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="edit_profile.jsp">Edit profile</a></li>
            <li><a class="dropdown-item" href="../doctorLogout">Logout</a></li> <!-- Logout for doctor -->
          </ul>
        </div>

      <% 
        }
      %>
      
      </ul>
    </div>
  </div>
</nav>
