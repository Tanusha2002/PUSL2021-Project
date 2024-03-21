/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function calculateFloor(){
    // Get length and width values    
    var width = document.getElementById('width').value;
    var length = document.getElementById('length').value;
    
    // Get the selected radio button value
    var selectedOption = document.querySelector('input[name="options"]:checked').value;

    console.log("Width:", width);
    console.log("Length:", length);

    console.log("Selected Option:", selectedOption);
}
