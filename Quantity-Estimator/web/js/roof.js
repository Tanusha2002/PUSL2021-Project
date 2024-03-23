/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function calculateRoof() {
    var width = document.getElementById('width').value;
    var length = document.getElementById('length').value;
    
    var selectedOption = document.querySelector('input[name="options"]:checked').value;
    
    if(selectedOption == 'claytile'){
       var noOfTiles = calculateClayTile(width, length);
       
        console.log("Roof Width:", width);
        console.log("Roof Length:", length);
        console.log("Selected Option:", selectedOption);
        
        console.log("No of Tiles:", noOfTiles);
    }else if (selectedOption == 'sheet'){
        var Xcombo = calculateSheet(width, length);
        
        console.log("Roof Width:", width);
        console.log("Roof Length:", length);
        console.log("Selected Option:", selectedOption);
        
        console.log("Size Six:", Xcombo[0]);
        console.log("Size Eight:", Xcombo[1]);
        console.log("Size Ten:", Xcombo[2]);
        console.log("Size Twelve:", Xcombo[3]);      
    }else if (selectedOption == 'claytile'){
        
    }else if(selectedOption == 'slab'){
        var slab = calculateSlab(width, length);
        
        console.log("Roof Width:", width);
        console.log("Roof Length:", length);
        console.log("Selected Option:", selectedOption);
        
        console.log("Cement:", slab[0]);
        console.log("Crushed Stones:", slab[1]);
        console.log("Sand:", slab[2]);
    }else{
        //invalid option
    }
}
