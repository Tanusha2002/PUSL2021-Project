/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

//import { calculateTile } from './floor/tile.js';

function calculateFloor(){
    // Get length and width values    
    var width = document.getElementById('width').value;
    var length = document.getElementById('length').value;
    
    // Get the selected radio button value
    var selectedOption = document.querySelector('input[name="options"]:checked').value;
    try{
        var selectedSizeVarient = document.querySelector('input[name="sVarient"]:checked').value;        
    }catch (err){
        selectedSizeVarient = '1x1';
    }

    
    if(selectedOption == 'tile'){
        var noOfTiles = calculateTile(width, length, selectedSizeVarient);
        var concrete = calculateConcrete(width, length);
        var plaster = calculatePlastering(width, length);

        fetchProductDetails(noOfTiles[0], noOfTiles[1], true);
        fetchProductDetails(11, Math.ceil(concrete[0]+plaster[0]));
        fetchProductDetails(12, Math.ceil(concrete[1]+plaster[1]));      
    }else if (selectedOption == 'carpet'){
        var lengthOfCarpet = calculateCarpet(width, length);
        
        fetchProductDetails(14, lengthOfCarpet[0], true);
    }else{
        //invalid option
    }
}