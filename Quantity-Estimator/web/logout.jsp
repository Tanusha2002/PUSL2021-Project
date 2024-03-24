<%-- 
    Document   : logout
    Created on : Mar 24, 2024, 5:44:34 PM
    Author     : Manushika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="QE.model.User"%>
<%
    // Retrieve the user from the session
    User user = (User) session.getAttribute("loguser");
    
    // Check if user is logged in
    if (user != null) {
        // Clear the session attribute
        session.removeAttribute("loguser");
        // Invalidate the session
        session.invalidate();
    }
    
    // Redirect to login page
    response.sendRedirect("http://localhost:8080/Quantity-Estimator/loginpg.jsp");
%>