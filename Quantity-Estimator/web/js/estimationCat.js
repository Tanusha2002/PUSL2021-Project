/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function fetchProductDetails(ids, qty, bool = false) {
    // Make an AJAX request to the Java Servlet
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (xhr.readyState == 4 && xhr.status == 200) {
            var products = JSON.parse(xhr.responseText);
            updateUI(products, qty, bool);
        }
    };
    xhr.open("GET", "ProductServlet?ids=" + JSON.stringify(ids), true);
    xhr.send();
}

function updateUI(products, qty, bool) {
    var outputDiv = document.getElementById('output');
    var table = outputDiv.querySelector('table');
    var tbody = table.querySelector('tbody');
    var totalCostSpan = outputDiv.querySelector('#totalCost');
    
    // Clear previous content from table body
    if (bool){
    tbody.innerHTML = ""; 
    totalCostSpan.textContent = 0;
    }
   
    var row = document.createElement('tr');
    var nameCell = document.createElement('td');
    var quantityCell = document.createElement('td');
    var costPerOneCell = document.createElement('td');
    var costCell = document.createElement('td');

    nameCell.textContent = products.name;
    quantityCell.textContent = qty;
    costPerOneCell.textContent = products.price; // You need to fetch this from the server or calculate it
    var costPerOne = products.price; // Example: get the price from the product object
    var totalCost = qty * costPerOne; // Calculate total cost
    costCell.textContent = totalCost;
    
    row.appendChild(nameCell);
    row.appendChild(quantityCell);
    row.appendChild(costPerOneCell);
    row.appendChild(costCell);

    tbody.appendChild(row);
 
    var currentTotal = parseFloat(totalCostSpan.textContent);
    totalCostSpan.textContent = (currentTotal + totalCost).toFixed(2);
}

