<%-- 
    Document   : changePrice
    Created on : Mar 24, 2024, 3:42:08 PM
    Author     : Manushika
--%>

<%@page pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="QE.connection.dbconnection"%>

<%
    int userId = Integer.parseInt(request.getParameter("id"));
    double newPrice = Double.parseDouble(request.getParameter("price"));

    Connection connection = null;
    PreparedStatement preparedStatement = null;

    try {
        connection = dbconnection.getConnection();
        String query = "UPDATE product SET price = ? WHERE id = ?";
        preparedStatement = connection.prepareStatement(query);
        preparedStatement.setDouble(1, newPrice);
        preparedStatement.setInt(2, userId);
        preparedStatement.executeUpdate();
    } catch (SQLException e) {
        // Handle error
        e.printStackTrace();
    } finally {
        try {
            if (preparedStatement != null) {
                preparedStatement.close();
            }
            if (connection != null) {
                connection.close();
            }
        } catch (SQLException ex) {
            ex.printStackTrace(); // Print stack trace for debugging
        }
    }
%>