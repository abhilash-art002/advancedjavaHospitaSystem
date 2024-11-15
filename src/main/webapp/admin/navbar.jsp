
<style>
/* Navbar Background and Brand Styling */
.navbar {
    background: linear-gradient(45deg, #4caf50, #388e3c); /* Adds gradient background */
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
    color: #ffeb3b; /* Yellow color on hover */
}

/* Navbar Link Styling */
.navbar-nav .nav-link {
    color: #ffffff;
    font-weight: 500;
    position: relative;
    transition: color 0.3s ease, transform 0.3s ease;
}

.navbar-nav .nav-link:hover {
    color: #ffeb3b; /* Yellow color on hover */
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
    background-color: #ffeb3b; /* Underline color */
    transition: width 0.3s ease;
}

.navbar-nav .nav-link:hover::after {
    width: 100%; /* Expands underline on hover */
}

/* Dropdown Button Styling */
.dropdown-toggle {
    color: #ffffff;
    background-color: #4caf50;
    border: none;
    transition: background-color 0.3s ease, color 0.3s ease;
}

.dropdown-toggle:hover {
    background-color: #388e3c; /* Darker green on hover */
    color: #ffeb3b; /* Yellow text on hover */
}

/* Dropdown Menu Styling */
.dropdown-menu {
    background-color: #4caf50;
    border: none;
    border-radius: 5px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

.dropdown-menu .dropdown-item {
    color: #ffffff;
    transition: color 0.3s ease, background-color 0.3s ease;
}

.dropdown-menu .dropdown-item:hover {
    background-color: #388e3c; /* Darker green */
    color: #ffeb3b; /* Yellow color */
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
    <a class="navbar-brand" href="index.jsp" ><i class="fa-solid fa-hospital"></i> MEDICO</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        
          <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">HOME</a>
        </li>
          <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="doctor.jsp">DOCTOR</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="view_doctor.jsp">VIEW DOCTOR</a>
        </li>
          <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="patient.jsp">PATIENT</a>
        </li>
        

        
      </ul>
      
              <form class="d-flex">
              <div class="dropdown">
                 <button class="btn btn-light dropdown-toggle" type="button"
                 id="dropdownMenuButton1"   data-bs-toggle="dropdown" aria-expanded="false">
            Admin</button> 
          
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="../adminLogout">Logout</a></li>
            
          </ul>
        
        </div>  
              
              </form>
      
    </div>
  </div>
</nav>