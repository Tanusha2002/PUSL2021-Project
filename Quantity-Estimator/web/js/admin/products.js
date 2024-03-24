/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function changePrice(selectElement, userId) {
    var newPrice = selectElement.value;

    // Send AJAX request to the server
    var xhr = new XMLHttpRequest();
    xhr.open('POST', 'changePrice.jsp', true);
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    xhr.send('id=' + userId + '&price=' + newPrice);

    xhr.onload = function() {
        if (xhr.status == 200) {
            
            alert('Price changed to ' + newPrice);
        } else {
            alert('Error changing Price');
        }
    };
}
