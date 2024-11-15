package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.*;

import com.db.DBConnect;
import com.entity.Feedback;

public class FeedbackDAO {
	 private Connection conn;

	    public FeedbackDAO(Connection conn) {
	        this.conn = conn;
	    }

	    // Method to save feedback to the database
	    public boolean saveFeedback(Feedback feedback) {
	        String sql = "INSERT INTO feedback (rating, comments) VALUES (?, ?)";
	        try (PreparedStatement ps = conn.prepareStatement(sql)) {
	            ps.setInt(1, feedback.getRating());
	            ps.setString(2, feedback.getComments());
	            int rowsAffected = ps.executeUpdate();
	            return rowsAffected > 0;
	        } catch (SQLException e) {
	            e.printStackTrace();
	            return false;
	        }
	    }

	    // Method to get feedback count for viewing on admin panel
	    public int getFeedbackCount() {
	        String sql = "SELECT COUNT(*) FROM feedback";
	        try (Statement stmt = conn.createStatement();
	             ResultSet rs = stmt.executeQuery(sql)) {
	            if (rs.next()) {
	                return rs.getInt(1);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return 0;
	    }
}
