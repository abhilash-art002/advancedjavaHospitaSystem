

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
.contact-us-container {
    display: flex;
    justify-content: space-between;
    align-items: flex-start;
    flex-wrap: wrap;
    gap: 20px;
}

.contact-details, .map-container {
    flex: 1;
    min-width: 300px;
}

.contact-details h2 {
    color: #2c3e50;
    font-size: 28px;
    margin-bottom: 5px;
}

.contact-details p {
    font-size: 16px;
    color: white;
    margin-bottom: 2px;
}

.contact-info {
    margin-top: 20px;
}

.contact-info p {
    margin-bottom: 10px;
}

.contact-form {
    margin-top: 20px;
}

.contact-form h3 {
    font-size: 22px;
    margin-bottom: 10px;
    color: #2c3e50;
}

.contact-form input, .contact-form textarea {
    width: 100%;
    padding: 12px;
    margin-bottom: 10px;
    border: 1px solid #ddd;
    border-radius: 5px;
}

.contact-form button {
    background-color: #3498db;
    color: white;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
}

.contact-form button:hover {
    background-color: #2980b9;
}

/* Google Map Container */
.map-container iframe {
margin-top: 50px;
    border-radius: 8px;
}

/* Responsive Design */
@media (max-width: 768px) {
    .contact-us-container {
        flex-direction: column;
        align-items: center;
    }
}
  
</style>

<div class="footer">
 <div class="contact-us-container">
            <div class="contact-details">
                <h2>Contact Us</h2>
                <p>Feel free to reach out to us. We're here to help!</p>

                <!-- Contact Info -->
                <div class="contact-info">
                    <p><strong>Email:</strong> medico@hospital.com</p>
                    <p><strong>Phone:</strong> 6370205126 , 1234567890</p>
                    <p><strong>Address:</strong> Jagatpur, Cuttack, Odisha</p>
                </div>

                <!-- Contact Form -->
                <div class="contact-form">
                    <h3>Send Us a Message</h3>
                    <form action="#" method="post">
                        <input type="text" placeholder="Your Name" required>
                        <input type="email" placeholder="Your Email" required>
                        <input placeholder="Your Message" rows="5" required>
                        <button type="submit">Send Message</button>
                    </form>
                </div>
            </div>

            <!-- Google Map -->
            <div class="map-container">
                <h3>Our Location</h3>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3651.902726023313!2d-74.0081714844596!3d40.71277577933129!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25a13e1c9b91d%3A0xf7429d7f9e7d02b7!2sNew%20York%20Public%20Library!5e0!3m2!1sen!2sus!4v1678571998544!5m2!1sen!2sus" width="100%" height="300" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </div>
  <div class="container-footer">
    <p class="footer-text">
      Give us your valuable Feedback <a style="font-size: 26px;" href="feedback.jsp">HERE</a> <br> &copy; 2024 
      hospital.com | All Rights Reserved
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
