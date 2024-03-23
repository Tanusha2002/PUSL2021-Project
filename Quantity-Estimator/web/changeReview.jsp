<%-- 
    Document   : changeRole
    Created on : Mar 22, 2024, 5:50:16 AM
    Author     : Sakuni Fonseka
--%>


<%@page pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="QE.connection.dbconnection"%>

<%
    int userId = Integer.parseInt(request.getParameter("id"));
    String newFeedback = request.getParameter("review");

    Connection connection = null;
    PreparedStatement preparedStatement = null;

    try {
        connection = dbconnection.getConnection();
        String query = "UPDATE user SET review = ? WHERE id = ?";
        preparedStatement = connection.prepareStatement(query);
        preparedStatement.setString(1, newFeedback);
        preparedStatement.setInt(2, userId);
        preparedStatement.executeUpdate();
        
        response.sendRedirect("home.jsp");
    } catch (SQLException e) {
        // Handle error
    } finally {
        // Close connections
    }
%>
