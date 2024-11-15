

<%@include file="allcss.jsp" %>

<style>
  /* Footer Styling */
  .footer {
    background: linear-gradient(
      45deg,
      #7b42f6,
      #5bc6ff
    ); /* Light purple and blue gradient */
    padding: 30px 0;
    color: #ffffff;
    text-align: center;
    position: relative;
    box-shadow: 0 -4px 8px rgba(0, 0, 0, 0.2);
    font-family: 'Arial', sans-serif;
  }

  .container-footer {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 15px;
  }

  .footer-text {
    font-size: 1.2rem;
    font-weight: 400;
    color: #ffffff;
    letter-spacing: 1px;
    transition: color 0.3s ease, transform 0.3s ease;
  }

  /* Link Hover Effect */
  .footer-text a {
    color: #ffd700; /* Gold color for link */
    text-decoration: none;
    transition: color 0.3s ease, text-shadow 0.3s ease;
  }

  .footer-text a:hover {
    color: #ffffff; /* Change to white on hover */
    text-shadow: 0 0 5px #ffd700, 0 0 10px #ffd700; /* Glow effect */
    transform: scale(1.1); /* Slightly larger on hover */
  }

  /* Footer Animation Effect */
  .footer:hover {
    background: linear-gradient(
      45deg,
      #5bc6ff,
      #7b42f6
    ); /* Reverse gradient on hover */
    transition: background 0.6s ease;
  }

  /* Footer Social Icons */
  .social-icons {
    margin-top: 20px;
  }

  .social-icons a {
    color: #ffd700;
    font-size: 1.5rem;
    margin: 0 15px;
    text-decoration: none;
    transition: transform 0.3s ease, color 0.3s ease;
  }

  .social-icons a:hover {
    transform: scale(1.2); /* Slightly enlarge icons */
    color: #ffffff; /* Change to white on hover */
  }

  /* Responsive Styling */
  @media (max-width: 768px) {
    .footer-text {
      font-size: 1rem;
    }

    .social-icons {
      margin-top: 15px;
    }

    .social-icons a {
      font-size: 1.2rem;
      margin: 0 10px;
    }
  }
</style>

<div class="footer">
  <div class="container-footer">
    <p class="footer-text">
      Give us your valuable Feedback <a href="feedback.jsp">here</a> <br> &copy; 2024 
      <a href="#">hospital.com</a> | All Rights Reserved
    </p>
    <!-- Social Media Icons -->
    <div class="social-icons">
      <a href="#" target="_blank"><i class="fab fa-facebook"></i></a>
      <a href="#" target="_blank"><i class="fab fa-twitter"></i></a>
      <a href="#" target="_blank"><i class="fab fa-instagram"></i></a>
      <a href="#" target="_blank"><i class="fab fa-linkedin"></i></a>
    </div>
  </div>
</div>
