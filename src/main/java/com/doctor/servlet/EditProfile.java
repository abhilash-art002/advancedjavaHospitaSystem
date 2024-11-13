package com.doctor.servlet;

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

@WebServlet("/doctorUpdateProfile")
public class EditProfile extends HttpServlet {
	 @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        try {
	            String fullname = request.getParameter("fullname");
	            String dob = request.getParameter("dob");
	            String qualification = request.getParameter("quali");
	            String specialist = request.getParameter("spec");
	            
	            String mobileNo = request.getParameter("mobno");
	            

	            int id = Integer.parseInt(request.getParameter("id"));

	            // Create a Doctor object with the updated data
	            Doctor d = new Doctor(id, fullname, dob, qualification, specialist, "", mobileNo, "");

	            // Initialize DoctorDao
	            DoctorDao dao = new DoctorDao(DBConnect.getConn());
	            HttpSession session = request.getSession();

	            // Use the updateDoctor method for updating the doctor details
	            if (dao.editDoctorProfile(d)) {
	            	Doctor updateDoctor=dao.getADoctorById(id);
	                session.setAttribute("sucMsgd", "Doctor updated successfully.");
	                session.setAttribute("doctObj", updateDoctor);
	                response.sendRedirect("doctor/edit_profile.jsp");
	            } else {
	                session.setAttribute("errorMsgd", "Something went wrong on the server.");
	                response.sendRedirect("doctor/edit_profile.jsp");
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
	
	
	
}
