/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package QE.servlet;

import QE.connection.dbconnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import org.json.JSONObject;

public class ProductServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the ID from the request parameter
        String id = request.getParameter("ids");

        String productName = null;
        double productPrice = 0.0;
        String productUnit = null;

        try {
            Connection conn = dbconnection.getConnection();

            // Prepare SQL query
            String sql = "SELECT p.*, u.shortform FROM product p INNER JOIN units u ON p.units = u.id WHERE p.id = ?";
            PreparedStatement statement = conn.prepareStatement(sql);

            // Set parameter
            statement.setString(1, id);

            // Execute query
            ResultSet resultSet = statement.executeQuery();
            
            // Process result
            if (resultSet.next()) {
                productName = resultSet.getString("name");
                productPrice = resultSet.getDouble("price");
                productUnit = resultSet.getString("shortform");
            }

            // Close connections
            resultSet.close();
            statement.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Construct response content
        String responseContent = "{" + "\"name\": \"" + productName + "\", " + "\"price\": \"" + productPrice + "\", " + "\"unit\": \"" + productUnit + "\"" + "}";
        
        // Write response
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        out.print(responseContent);
        out.flush();
    }
}
