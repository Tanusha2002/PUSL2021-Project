/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function calculateRoof() {
    var width = document.getElementById('width').value;
    var length = document.getElementById('length').value;
    
    var selectedOption = document.querySelector('input[name="options"]:checked').value;
    
    if(selectedOption == 'claytile'){
       var noOfTiles = calculateClayTil(width, length);
       
        console.log("Roof Width:", width);
        console.log("Roof Length:", length);
        console.log("Selected Option:", selectedOption);
        
        console.log("No of Tiles:", noOfTiles);
    }
}
