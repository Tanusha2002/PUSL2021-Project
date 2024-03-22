<%-- 
    Document   : changeRole
    Created on : Mar 22, 2024, 5:50:16 AM
    Author     : Manushika
--%>

<%@page pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="QE.connection.dbconnection"%>

<%
    int userId = Integer.parseInt(request.getParameter("id"));
    String newRole = request.getParameter("role");

    Connection connection = null;
    PreparedStatement preparedStatement = null;

    try {
        connection = dbconnection.getConnection();
        String query = "UPDATE user SET role = ? WHERE id = ?";
        preparedStatement = connection.prepareStatement(query);
        preparedStatement.setString(1, newRole);
        preparedStatement.setInt(2, userId);
        preparedStatement.executeUpdate();
    } catch (SQLException e) {
        // Handle error
    } finally {
        // Close connections
    }
%>
