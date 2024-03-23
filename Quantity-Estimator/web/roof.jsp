<%-- 
    Document   : roof
    Created on : Mar 18, 2024, 8:13:28 PM
    Author     : nalin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Roof</title>
<script src="js/roof/claytile.js" type="text/javascript"></script>
<script src="js/roof/slab.js" type="text/javascript"></script>
<script src="js/roof.js" type="text/javascript"></script>
<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

body {
    background: url("img/home.jpg");
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    display: flex;
    flex-direction: column;
    min-height: 100vh; /* Set minimum height to 100% of viewport height */
}

/* Styling for radio buttons */
.radio-container {
    position: relative; /* Set position to relative for the container */
    display: flex;
    align-items: center;
    justify-content: center; /* Center items horizontally */
    margin-bottom: 20px; /* Increase margin-bottom for spacing between sections */
    margin-top: 150px; /* Adjust margin-top to bring the options downwards */
}

.radio-container input[type="radio"] {
    position: absolute; /* Set position to absolute */
    opacity: 0; /* Hide the radio button */
}

.radio-container label {
    cursor: pointer;
    margin-right: 20px; /* Adjust margin-right for spacing between images */
    display: flex; /* Add display flex to align items */
    flex-direction: column; /* Set flex direction to column */
    align-items: center; /* Align items in the center */
}

.radio-container img {
    width: 250px; /* Adjust the width of the image */
    height: 250px; /* Maintain aspect ratio */
    border: 2px solid transparent;
    border-radius: 50%; /* Make the image circular */
    transition: border-color 0.3s ease;
}

.radio-container input[type="radio"]:checked + label img {
    border-color: #000; /* Change border color when radio button is checked */
}

.radio-container label span {
    margin-top: 20px; /* Adjust spacing between the image and the span */
    color: white; /* Set font color to white */
    font-size: 18px; /* Increase font size of option names */
}

.container {
    max-width: 800px;
    margin: 0 auto;
    padding-top: 10px; /* Adjust as needed */
    padding-bottom: 40px;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px; /* Adjust as needed */
    background-color: white; /* Set background color of the table */
}

th, td {
    border: 1px solid #ddd;
    padding: 8px;
    text-align: center;
    background-color: white; /* Set background color of table cells */
}

th {
    background-color: #f2f2f2;
}

tr:nth-child(even) {
    background-color: #f2f2f2;
}

.editable {
    display: inline-block;
    width: calc(100% - 20px);
    text-align: center;
    border: none;
    background: transparent;
}
.contain {
    max-width: 400px;
    margin: 50px auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1 {
    text-align: center;
    margin-bottom: 20px;
}

div {
    margin-bottom: 10px;
}

label1 {
    display: inline-block;
    width: 100px;
}

input {
    width: calc(100% - 100px);
    padding: 5px;
    border: 1px solid #ccc;
    border-radius: 3px;
}

button {
    width: 100%;
    padding: 10px;
    background-color: black; /* Change background color to black */
    color: #fff;
    border: none;
    border-radius: 3px;
    cursor: pointer;
}

button:hover {
    background-color: #0056b3;
}

#result {
    margin-top: 20px;
    padding: 10px;
    background-color: #f0f0f0;
    border-radius: 3px;
    display: none;
}

footer {
    margin-top: auto; /* Push the footer to the bottom */
}

</style>
</head>
<body>

<jsp:include page="navigationbar.jsp" />

<section class="radio-container">
    <div>
        <input type="radio" id="option1" name="options" value="claytile" checked="true">
        <label for="option1">
            <img src="img/claytime.jpeg" alt="Option 1">
            <span>Clay tile</span> <!-- Text under the image -->
        </label>
    </div>

    
        <input type="radio" id="option2" name="options" value="sheets">
        <label for="option2">
            <img src="img/cementroofing.jpg" alt="Option 2">
            <span>Cement Roofing Sheet</span> <!-- Text under the image -->
        </label>
    

    
        <input type="radio" id="option3" name="options" value="ZnAl">
        <label for="option3">
            <img src="img/zincroofing.jpg" alt="Option 3">
            <span>Zinc Aluminium Roofing Sheet</span> <!-- Text under the image -->
        </label>
        
         <input type="radio" id="option4" name="options" value="slab">
        <label for="option4">
            <img src="img/slab.jpg" alt="Option 4">
            <span>Concrete slab</span> <!-- Text under the image -->
        </label>
</section>
<section>
<div class="contain">
    
    <div>
        <label1 for="length">Length:</label1>
        <input type="number" id="length" placeholder="Enter length">
    </div>
    <div>
        <label1 for="width">Width:</label1>
        <input type="number" id="width" placeholder="Enter width">
    </div>
    <button onclick="calculateRoof()">Calculate</button>
    <div id="result"></div>
</div>
</section>
<section>
<div class="container">
    
    <table>
        <thead>
            <tr>
                <th>Raw materials</th>
                <th>Quantity</th>
                <th>Cost per One ($)</th>
                <th>Cost ($)</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Small</td>
                <td><span class="editable" id="quantitySmall" onclick="calculateCost('Small')">0</span></td>
                <td>50</td>
                <td><span id="costSmall">0</span></td>
            </tr>
            <tr>
                <td>Medium</td>
                <td><span class="editable" id="quantityMedium" onclick="calculateCost('Medium')">0</span></td>
                <td>100</td>
                <td><span id="costMedium">0</span></td>
            </tr>
            <tr>
            <td>Large</td>
                <td><span class="editable" id="quantityLarge" onclick="calculateCost('Large')">0</span></td>
                <td>150</td>
                <td><span id="costLarge">0</span></td>
            </tr>
        </tbody>
        <tfoot>
            <tr>
                <td colspan="3">Total Cost</td>
                <td><span id="totalCost">0</span></td>
            </tr>
        </tfoot>
    </table>
</div>
    
</section>
<script>
     function calculateCost(size) {
        var quantity = 1; // Default quantity is 1
        var costPerOne = parseInt(document.querySelector('td:nth-child(3):contains("' + size + '") + td').innerText);
        var cost = quantity * costPerOne;
        document.getElementById('cost' + size).innerText = cost;
        calculateTotalCost();
    }

    function calculateTotalCost() {
        var totalCost = 0;
        var costElements = document.querySelectorAll('span[id^="cost"]');
        costElements.forEach(function(costElement) {
            totalCost += parseInt(costElement.innerText);
        });
        document.getElementById('totalCost').innerText = totalCost;
    }
    

</script>
<footer>
    <jsp:include page="footer.jsp" />
</footer>

</body>
</html>