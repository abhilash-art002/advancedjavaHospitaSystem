<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<%@include file="component/allcss.jsp" %>
<%@include file="component/index_card_css.jsp" %>

<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
.moving-text {
    position: absolute;
    top: 20px;
    width: 100%;
    text-align: center;
    overflow: hidden;
    white-space: nowrap;
    z-index: 10;
}

.moving-text p {
    display: inline-block;
    font-size: 1.5rem;
    font-weight: bold;
    color: #ffffff;
    background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent background */
    padding: 10px 20px;
    border-radius: 8px;
    animation: slide-left 10s linear infinite;
}

@keyframes slide-left {
    0% {
        transform: translateX(-100%);
    }
    100% {
        transform: translateX(100%);
    }
}

</style>
</head>
<body >
  <%@include file="component/navbar.jsp" %>




<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel" data-bs-interval="2000">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
   	

    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="image/testi-bg.jpg" class="d-block w-100" alt="..." height="500px">
        </div>
        <div class="carousel-item">
            <img src="image/slider2.jpg" class="d-block w-100" alt="..." height="500px">
        </div>
        <div class="carousel-item">
            <img src="image/video-bg.jpg" class="d-block w-100" alt="..." height="500px">
        </div>
    </div>
    
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>


	<div class="container p-3">

    <p class="text-center fs-2">Key Features of Our Hospital</p>
    <div class="row">
        <!-- Left Column for Cards -->
        <div class="col-md-8 p-5">
            <div class="row">
                <!-- Card 1 -->
                <div class="col-md-6 mb-3">
                    <div class="card paint-card shadow-sm h-100">
                        <img src="image/cardiology.jpg" class="card-img-top" alt="Cardiology Department">
                        <div class="card-body">
                            <h5 class="card-title">Cardiology</h5>
                            <p class="card-text">Our cardiology department provides top-notch care for heart-related ailments, featuring state-of-the-art equipment and experienced specialists.</p>
                            <a href="#" class="btn btn-primary">Learn More</a>
                        </div>
                    </div>
                </div>
                <!-- Card 2 -->
                <div class="col-md-6 mb-3">
                    <div class="card paint-card shadow-sm h-100">
                        <img src="image/neurology.jpg" class="card-img-top" alt="Neurology Department">
                        <div class="card-body">
                            <h5 class="card-title">Neurology</h5>
                            <p class="card-text">Our neurology team offers advanced care for neurological conditions, with specialists available 24/7 for consultations and emergency care.</p>
                            <a href="#" class="btn btn-primary">Learn More</a>
                        </div>
                    </div>
                </div>
                <!-- Card 3 -->
                <div class="col-md-6 mt-2">
                    <div class="card paint-card shadow-sm h-100">
                        <img src="image/Orthopedics.jpg" class="card-img-top" alt="Orthopedics Department">
                        <div class="card-body">
                            <h5 class="card-title">Orthopedics</h5>
                            <p class="card-text">We specialize in orthopedic surgeries and treatments for bone and joint health, helping patients regain mobility and comfort.</p>
                            <a href="#" class="btn btn-primary">Learn More</a>
                        </div>
                    </div>
                </div>
                <!-- Card 4 -->
                <div class="col-md-6 mt-2">
                    <div class="card paint-card shadow-sm h-100">
                        <img src="image/Pediatrics.jpg" class="card-img-top" alt="Pediatrics Department">
                        <div class="card-body">
                            <h5 class="card-title">Pediatrics</h5>
                            <p class="card-text">Our pediatricians provide compassionate care for children of all ages, ensuring their health and development with a family-centered approach.</p>
                            <a href="#" class="btn btn-primary">Learn More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Right Column for Image -->
        <div class="col-md-4">
        <br> <br>
            <img src="image/hospital_building.webp" class="img-fluid rounded" alt="Hospital Building"> <br> <br>
             <img src="image/about-img.jpg" class="img-fluid rounded" alt="Hospital Building"> <br> <br>
        <img src="image/pharma.png" class="img-fluid rounded" alt="Hospital Building">
       
        </div>        
    </div>
</div>


	<hr>


	<div class="container p-2">
		<p class="text-center fs-2">Our Team</p>
		<div class="row">
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">

						<img alt="" src="image/doc-1.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Abhilash Das</p>
						<p class="fs-7">(CEO & Chairman)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">

						<img alt="" src="image/doc-2.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Sudipta Rout</p>
						<p class="fs-7">(Vice Chanecellor)</p>
					</div>
				</div>
			</div>


			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">

						<img alt="" src="image/doc-3.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Manoj Das</p>
						<p class="fs-7">(Pro Dean)</p>
					</div>
				</div>
			</div>


			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">

						<img alt="" src="image/doc-4.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Pranati Swain</p>
						<p class="fs-7">Assistant Professor</p>
					</div>
				</div>
			</div>




		</div>

	</div>
<%@ include file="component/footer.jsp"%>
</body>
</html>
