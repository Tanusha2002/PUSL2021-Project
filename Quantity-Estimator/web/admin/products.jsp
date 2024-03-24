<%-- 
    Document   : products
    Created on : Mar 19, 2024, 9:06:24 PM
    Author     : Manushika
--%>
<%@page import="QE.model.User"%>
<% User user =(User) session.getAttribute("loguser");
if (user==null){
response.sendRedirect("/loginpg.jsp");
    }
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="QE.connection.dbconnection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="../js/admin/products.js" type="text/javascript"></script>
        <link href="../css/admin.css" rel="stylesheet" type="text/css"/>   
        <link href="../css/styles.css" rel="stylesheet" type="text/css"/>
        <title>Products</title>
    </head>
    <body>
        <main>
            <section class="table">
                <h2 class="table_title">Products</h2>
                <div class="flex_table">
                    <!-- Table header -->
                    <div class="table-row table-header">
                        <div class="table-cell email-cell">Raw material</div>
                        <div class="table-cell">Unit</div>
                        <div class="table-cell">Price</div>
                    </div>
                    <!-- Table data -->
           <% 
            Connection connection = null;
            PreparedStatement preparedStatement = null;
            ResultSet resultSet = null;
            
            try {
                // Get connection from dbconnection class
                connection = dbconnection.getConnection();
                
                // Query to retrieve user data
                String query = "SELECT p.*, u.name FROM product p INNER JOIN units u ON p.units = u.id";
                preparedStatement = connection.prepareStatement(query);
                resultSet = preparedStatement.executeQuery();
                
                // Iterate through the result set and populate the table rows
                while(resultSet.next()) {
                    out.println("<div class='table-row'>");
                    out.println("<div class='table-cell email-cell'>" + resultSet.getString("name") + "</div>");
                    out.println("<div class='table-cell'>" + resultSet.getString("u.name") + "</div>");
                    out.println("<div class='table-cell'>");
                    out.println("&#x20A8;<input type='number' id='' onchange='changePrice(this, " + resultSet.getInt("id") + ")' value='" + resultSet.getDouble("price") + "' placeholder='Enter new price'>");
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
            </section>
        </main>
    </body>
</html>

