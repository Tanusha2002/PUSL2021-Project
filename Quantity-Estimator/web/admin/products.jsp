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
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/admin.css" rel="stylesheet" type="text/css"/>   
        <link href="../css/styles.css" rel="stylesheet" type="text/css"/>
        <title>Products</title>
    </head>
    <body>
        <main>
            <section class="table">
                <h2 class="table_title">Roof</h2>
                <div class="flex_table">
                    <!-- Table header -->
                    <div class="table-row table-header">
                        <div class="table-cell">Type</div>
                        <div class="table-cell">Size</div>
                        <div class="table-cell">Cost</div>
                    </div>
                    <!-- Table data -->
                    <div class="table-row">
                        <div class="table-cell">Asbestos Sheet</div>
                        <div class="table-cell">3.5ft x 6ft</div>
                        <div class="table-cell">
                            &#x20A8;<input type="number" id="" value="3900" placeholder="Enter new price">
                        </div>
                    </div>
                    <div class="table-row">
                        <div class="table-cell">Asbestos Sheet</div>
                        <div class="table-cell">3.5ft x 9ft</div>
                        <div class="table-cell">
                            &#x20A8;<input type="number" id="" value="4750" placeholder="Enter new price">
                        </div>
                    </div>
                    <div class="table-row">
                        <div class="table-cell">Asbestos Sheet</div>
                        <div class="table-cell">3.5ft x 12ft</div>
                        <div class="table-cell">
                            &#x20A8;<input type="number" id="" value="6500" placeholder="Enter new price">
                        </div>
                    </div>
                    <!-- Add more rows as needed -->
                </div>

            </section>
        </main>
    </body>
</html>
