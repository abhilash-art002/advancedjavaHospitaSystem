package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.db.DBConnect;


@WebServlet("/userChangePassword")
public class ChangePassword extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        try {
            // Get user ID, old password, and new password
            String uidParam = req.getParameter("uid");
            if (uidParam == null || uidParam.isEmpty()) {
                session.setAttribute("errorMsg", "User ID is missing.");
                resp.sendRedirect("changePassword.jsp");
                return;
            }
            int uid = Integer.parseInt(uidParam);
            String oldPassword = req.getParameter("oldPassword");
            String newPassword = req.getParameter("newPassword");

            UserDao dao = new UserDao(DBConnect.getConn());

            // Check if old password is correct
            if (dao.checkOldPassword(uid, oldPassword)) {
                // Ensure new password is different from old password
                if (oldPassword.equals(newPassword)) {
                    session.setAttribute("errorMsg", "New password cannot be the same as the old password.");
                    resp.sendRedirect("changePassword.jsp");
                } else {
                    // Change the password
                    if (dao.changePassword(uid, newPassword)) {
                        session.setAttribute("succMsg", "Password Changed Successfully");
                        resp.sendRedirect("changepassword.jsp");
                    } else {
                        session.setAttribute("errorMsg", "Something went wrong on the server.");
                        resp.sendRedirect("changepassword.jsp");
                    }
                }
            } else {
                session.setAttribute("errorMsg", "Old Password is Incorrect");
                resp.sendRedirect("changepassword.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
            session.setAttribute("errorMsg", "An error occurred while processing your request.");
            resp.sendRedirect("changepassword.jsp");
        }
    }
}
