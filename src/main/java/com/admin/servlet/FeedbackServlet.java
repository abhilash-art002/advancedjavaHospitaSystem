package com.admin.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.FeedbackDAO;
import com.db.DBConnect;
import com.entity.Feedback;

@WebServlet("/FeedbackServlet")
public class FeedbackServlet extends HttpServlet {
	private FeedbackDAO feedbackDAO;

    @Override
    public void init() throws ServletException {
        // Initialize FeedbackDAO with DB connection
        this.feedbackDAO = new FeedbackDAO(DBConnect.getConn());
    }

    // Handle feedback form submission
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int rating = Integer.parseInt(request.getParameter("rating"));
        String comments = request.getParameter("comments");

        Feedback feedback = new Feedback();
        feedback.setRating(rating);
        feedback.setComments(comments);

        boolean isSaved = feedbackDAO.saveFeedback(feedback);

        if (isSaved) {
            response.sendRedirect("index.jsp");
        } else {
            response.sendRedirect("index.jsp");
        }
    }

    // Handle admin request to view feedback count
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int feedbackCount = feedbackDAO.getFeedbackCount();
        request.setAttribute("feedbackCount", feedbackCount);
        request.getRequestDispatcher("admin-feedback.jsp").forward(request, response);
    }	
}
