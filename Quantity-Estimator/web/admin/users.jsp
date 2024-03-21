<%-- 
    Document   : users
    Created on : Mar 21, 2024, 6:28:11 PM
    Author     : Mervin Roy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin | User</title>
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
                <div class="table-row">
                    <div class="table-cell id-cell">1</div>
                    <div class="table-cell username-cell">john_doe</div>
                    <div class="table-cell email-cell">john@example.com</div>
                    <div class="table-cell name-cell">John</div>
                    <div class="table-cell name-cell">Doe</div>
                    <div class="table-cell role-cell">Admin</div>
                </div>
                <div class="table-row">
                    <div class="table-cell id-cell">2</div>
                    <div class="table-cell username-cell">jane_smith</div>
                    <div class="table-cell email-cell">jane@example.com</div>
                    <div class="table-cell name-cell">Jane</div>
                    <div class="table-cell name-cell">Smith</div>
                    <div class="table-cell role-cell">User</div>
                </div>
                <!-- Add more table rows as needed -->
            </div>
        </section>
    </body>
</html>
