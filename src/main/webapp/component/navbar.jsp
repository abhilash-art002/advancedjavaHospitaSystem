<%@page import="com.entity.User"%>
<%@page isELIgnored="false" %>

<style>
/* Navbar Background and Brand Styling */
.navbar {
    background: linear-gradient(45deg, #7b42f6, #5bc6ff); /* Light blue and purple gradient */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    transition: background 0.5s ease;
}

.navbar-brand {
    font-size: 1.5rem;
    color: #ffffff;
    font-weight: bold;
    transition: color 0.3s ease;
}

.navbar-brand:hover {
    color: #ffd700; /* Gold color on hover */
}

/* Navbar Link Styling */
.navbar-nav .nav-link {
    color: #ffffff;
    font-weight: 500;
    position: relative;
    transition: color 0.3s ease, transform 0.3s ease;
}

.navbar-nav .nav-link:hover {
    color: #ffd700; /* Gold color on hover */
    transform: translateY(-2px); /* Slight lift effect */
}

/* Underline Animation on Hover */
.navbar-nav .nav-link::after {
    content: '';
    position: absolute;
    left: 0;
    bottom: -2px;
    width: 0;
    height: 2px;
    background-color: #ffd700; /* Underline color */
    transition: width 0.3s ease;
}

.navbar-nav .nav-link:hover::after {
    width: 100%; /* Expands underline on hover */
}
/* Navbar Logo Styling */
.navbar-logo {
    height: 60px; /* Adjust height as needed */
    width: auto; /* Keeps the aspect ratio */
    margin-right: 8px; /* Space between logo and brand text */
}

/* Optional: Center the logo with vertical alignment */
.navbar-brand {
    display: flex;
    align-items: center;
}


/* Dropdown Button Styling */
.dropdown-toggle {
    color: #ffffff;
    background-color: #7b42f6;
    border: none;
    transition: background-color 0.3s ease, color 0.3s ease;
}

.dropdown-toggle:hover {
    background-color: #5bc6ff; /* Lighter blue on hover */
    color: #ffd700; /* Gold text on hover */
}

/* Dropdown Menu Styling */
.dropdown-menu {
    background-color: #7b42f6;
    border: none;
    border-radius: 5px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

.dropdown-menu .dropdown-item {
    color: #ffffff;
    transition: color 0.3s ease, background-color 0.3s ease;
}

.dropdown-menu .dropdown-item:hover {
    background-color: #5bc6ff; /* Light blue on hover */
    color: #ffd700; /* Gold color */
}

/* Responsive Toggler Button */
.navbar-toggler {
    border: none;
    outline: none;
}

.navbar-toggler-icon {
    background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='%23FFFFFF' viewBox='0 0 30 30'%3e%3cpath stroke='rgba%28155, 155, 155, 0.5%29' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e");
}

</style>


<nav class="navbar navbar-expand-lg bg-success navbar-dark">
  <div class="container-fluid">
    <img src="image/logo1.webp" alt="MEDICO Logo" class="navbar-logo"> 
    </a>
    <a class="navbar-brand" href="index.jsp" ><i class="fa-solid fa-hospital"></i> MEDICO</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">

      <%
        // Fetch the user object from the session and cast it to User type
        User userObj = (User) session.getAttribute("userObj");
        if (userObj == null) {
      %>
      
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="admin_login.jsp"><i class="fa-solid fa-right-to-bracket"></i> Admin</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="doctor_login.jsp">Doctor</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="user_appointment.jsp">Appointment</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="user_login.jsp">User</a>
        </li>
      
      <%
        } else {
          // Get the user's full name from the User object
          String userName = userObj.getFullname(); // Assuming User class has getFullname() method
      %>
      
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="user_appointment.jsp">Appointment</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="view_appointment.jsp">View Appointment</a>
        </li>
        
        <div class="dropdown">
          <button class="btn btn-light dropdown-toggle" type="button"
            id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
            <i class="fa-solid fa-user-circle"></i> 
            <%= userName %> <!-- Display the user's full name -->
          </button> 
          
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="changepassword.jsp">Change Password</a></li>
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
