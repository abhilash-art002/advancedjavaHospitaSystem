<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Form</title>
    <style>
        /* Body and Basic Layout */
body {
    font-family: 'Arial', sans-serif;
    background-color: #f4f4f4;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

.feedback-form {
    background-color: #fff;
    border-radius: 10px;
    padding: 20px;
    width: 100%;
    max-width: 600px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    text-align: center;
}

/* Form Header */
.feedback-form h2 {
    font-size: 24px;
    margin-bottom: 20px;
    color: #2c3e50;
}

/* Star Rating Section */
.star-rating {
    display: flex;
    justify-content: center;
    margin-bottom: 20px;
}

.star-rating input {
    display: none;
}

.star-rating label {
    font-size: 40px;
    color: #ddd;
    cursor: pointer;
    transition: color 0.3s ease;
}

.star-rating input:checked ~ label,
.star-rating label:hover,
.star-rating label:hover ~ label {
    color: #f39c12;
}

/* Feedback Textarea */
textarea {
    width: 100%;
    padding: 10px;
    font-size: 16px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    resize: vertical;
    transition: border 0.3s ease;
}

textarea:focus {
    border-color: #3498db;
    outline: none;
}

/* Submit Button */
.submit-btn {
    background-color: #3498db;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.3s ease;
}

.submit-btn:hover {
    background-color: #2980b9;
    transform: scale(1.05);
}

/* Responsive Design */
@media (max-width: 768px) {
    .feedback-form {
        width: 90%;
    }
}
        
    </style>
</head>
<body>
    <div class="feedback-form">
        <h2>Feedback Form</h2>
        <form action="FeedbackServlet" method="post">
            <!-- Star Rating Section -->
            <div class="star-rating">
                <input type="radio" id="star5" name="rating" value="5"><label for="star5">&#9733;</label>
                <input type="radio" id="star4" name="rating" value="4"><label for="star4">&#9733;</label>
                <input type="radio" id="star3" name="rating" value="3"><label for="star3">&#9733;</label>
                <input type="radio" id="star2" name="rating" value="2"><label for="star2">&#9733;</label>
                <input type="radio" id="star1" name="rating" value="1"><label for="star1">&#9733;</label>
            </div>

            <!-- Feedback Textarea -->
            <textarea name="comments" placeholder="Write your feedback here..." required></textarea>

            <!-- Submit Button -->
            <button type="submit" class="submit-btn">Submit Feedback</button>
        </form>
    </div>
</body>
</html>
