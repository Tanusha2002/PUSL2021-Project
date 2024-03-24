<%-- 
    Document   : users
    Created on : Mar 21, 2024, 6:28:11 PM
    Author     : Manushika
--%>
<%@page import="QE.model.User"%>
<% User user =(User) session.getAttribute("loguser");
if (user==null){
response.sendRedirect("../loginpg.jsp");
    }
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="QE.connection.dbconnection"%> <!-- Importing the dbconnection class -->

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Admin | User</title>
    <script src="../js/users.js" type="text/javascript"></script>
    <link href="../css/styles.css" rel="stylesheet" type="text/css"/>
    <link href="../css/admin.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<section class="table">
    <h2 class="table_title">Users</h2>
    <div class="flex_table">
        <div class="table-row table-header">
            <div class="table-cell id-cell">ID</div>
            <div class="table-cell username-cell">Username</div>
            <div class="table-cell email-cell">Email</div>
            <div class="table-cell name-cell">First Name</div>
            <div class="table-cell name-cell">Last Name</div>
            <div class="table-cell role-cell">Role</div>
        </div>

        <% 
            Connection connection = null;
            PreparedStatement preparedStatement = null;
            ResultSet resultSet = null;
            
            try {
                // Get connection from dbconnection class
                connection = dbconnection.getConnection();
                
                // Query to retrieve user data
                String query = "SELECT * FROM user";
                preparedStatement = connection.prepareStatement(query);
                resultSet = preparedStatement.executeQuery();

                // Iterate through the result set and populate the table rows
                while(resultSet.next()) {
                    out.println("<div class='table-row'>");
                    out.println("<div class='table-cell id-cell'>" + resultSet.getInt("id") + "</div>");
                    out.println("<div class='table-cell username-cell'>" + resultSet.getString("username") + "</div>");
                    out.println("<div class='table-cell email-cell'>" + resultSet.getString("email") + "</div>");
                    out.println("<div class='table-cell name-cell'>" + resultSet.getString("firstname") + "</div>");
                    out.println("<div class='table-cell name-cell'>" + resultSet.getString("lastname") + "</div>");
                    //out.println("<div class='table-cell role-cell'>" + resultSet.getString("role") + "</div>");
                    out.println("<div class='table-cell role-cell'>");
                    out.println("<select onchange='changeRole(this, " + resultSet.getInt("id") + ")'>");
                    out.println("<option value='admin'" + (resultSet.getString("role").equals("admin") ? " selected" : "") + ">Admin</option>");
                    out.println("<option value='user'" + (resultSet.getString("role").equals("user") ? " selected" : "") + ">User</option>");
                    out.println("</select>");
                    out.println("</div>");
                    out.println("</div>");
                }
            } catch (SQLException e) {
                out.println("Error: " + e.getMessage());
            } finally {
                // Close the database connections
                try {
                    if(resultSet != null) resultSet.close();
                    if(preparedStatement != null) preparedStatement.close();
                    if(connection != null) connection.close();
                } catch (SQLException e) {
                    out.println("Error closing connection: " + e.getMessage());
                }
            }
        %>
    </div>
</section>
</body>
</html>

