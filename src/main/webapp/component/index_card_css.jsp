<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">

/* Card Styling */
.paint-card {
    position: relative;
    overflow: hidden;
    border: none;
    border-radius: 15px;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.paint-card:hover {
    transform: scale(1.05);
    box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.2);
}

/* Gradient Background Animation */
.paint-card::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: linear-gradient(135deg, #ff6ec4, #7873f5);
    z-index: 1;
    opacity: 0;
    transition: opacity 0.5s ease;
    border-radius: 15px;
}

.paint-card:hover::before {
    opacity: 0.8;
}

/* Overlay to Darken Image on Hover */
.paint-card .card-img-top {
    position: relative;
    z-index: 2;
    transition: transform 0.5s ease;
}

.paint-card:hover .card-img-top {
    transform: scale(1.1);
    opacity: 0.5;
}

/* Card Content Styling */
.paint-card .card-body {
    position: relative;
    z-index: 3;
    text-align: center;
    transition: color 0.3s ease, transform 0.3s ease;
}

.paint-card:hover .card-body {
    transform: translateY(-10px); /* Moves text slightly upwards on hover */
}

/* Title and Text Styling on Hover */
.paint-card .card-title {
    font-weight: bold;
    font-size: 1.2rem;
    margin-bottom: 10px;
    color: #fff; /* Initial color */
    transition: color 0.3s, font-size 0.3s ease;
}

.paint-card:hover .card-title {
    color: #ffe135; /* Change to bright yellow on hover */
    font-size: 1.4rem; /* Slightly increase font size */
}

.paint-card .card-text {
    font-size: 0.9rem;
    color: #e0e0e0; /* Initial color */
    transition: color 0.3s ease, transform 0.3s ease;
}

.paint-card:hover .card-text {
    color: #ffffff; /* Change text color on hover */
    font-style: italic; /* Add italic style on hover */
}

/* Button Styling */
.paint-card .btn-primary {
    background-color: #ffffff;
    color: #7873f5;
    border: none;
    transition: background-color 0.3s, color 0.3s;
}

.paint-card .btn-primary:hover {
    background-color: #7873f5;
    color: #ffffff;
}
</style>

</head>
<body>

</body>
</html>