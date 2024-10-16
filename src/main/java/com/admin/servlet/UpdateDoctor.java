package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.db.DBConnect;
import com.entity.Doctor;

@WebServlet("/updateDoctor")
public class UpdateDoctor extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String fullname = request.getParameter("fullname");
            String dob = request.getParameter("dob");
            String qualification = request.getParameter("quali");
            String specialist = request.getParameter("spec");
            String email = request.getParameter("email");
            String mobileNo = request.getParameter("mobno");
            String password = request.getParameter("password");

            int id = Integer.parseInt(request.getParameter("id"));

            // Create a Doctor object with the updated data
            Doctor d = new Doctor(id, fullname, dob, qualification, specialist, email, mobileNo, password);

            // Initialize DoctorDao
            DoctorDao dao = new DoctorDao(DBConnect.getConn());
            HttpSession session = request.getSession();

            // Use the updateDoctor method for updating the doctor details
            if (dao.updateDoctor(d)) {
                session.setAttribute("sucMsg", "Doctor updated successfully.");
                response.sendRedirect("admin/view_doctor.jsp");
            } else {
                session.setAttribute("errorMsg", "Something went wrong on the server.");
                response.sendRedirect("admin/view_doctor.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
