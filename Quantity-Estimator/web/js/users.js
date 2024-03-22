/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function changeRole(selectElement, userId) {
    var newRole = selectElement.value;

    // Send AJAX request to the server
    var xhr = new XMLHttpRequest();
    xhr.open('POST', 'changeRole.jsp', true);
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    xhr.send('id=' + userId + '&role=' + newRole);

    xhr.onload = function() {
        if (xhr.status == 200) {
            alert('Role changed successfully');
        } else {
            alert('Error changing role');
        }
    };
}
