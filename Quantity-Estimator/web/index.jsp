<%-- 
    Document   : index
    Created on : Mar 16, 2024, 3:56:13 PM
    Author     : nalin
--%>

<%@page import="QE.connection.dbconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index Page</title>
        <link href="css/styles.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <% out.print(dbconnection.getConnection()); %>
        <a href="loginpg.jsp">goto</a>
    </body>
</html>
