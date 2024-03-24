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
       fetchProductDetails(noOfTiles[0], noOfTiles[1], true);
    }else if (selectedOption == 'sheet'){
        var Xcombo = calculateSheet(width, length);              
        fetchProductDetails(6, Xcombo[0], true);
        fetchProductDetails(7, Xcombo[1]);
        fetchProductDetails(8, Xcombo[2]);
        fetchProductDetails(9, Xcombo[3]);
        
    }else if (selectedOption == 'ZnAl'){
        var Xcombo = calculateSheetZnAl(width, length);              
        fetchProductDetails(15, Xcombo[0], true);
        fetchProductDetails(16, Xcombo[1]);
        fetchProductDetails(17, Xcombo[2]);
        fetchProductDetails(18, Xcombo[3]);
        
    }else if(selectedOption == 'slab'){
        var slab = calculateSlab(width, length);       
        fetchProductDetails(11, slab[0], true);
        fetchProductDetails(13, slab[1]);
        fetchProductDetails(12, slab[2]);
    }else{
        //invalid option
    }    
}