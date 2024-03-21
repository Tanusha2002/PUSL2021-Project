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
    }else if (selectedOption == 'carpert'){
        
    }else{
        //invalid option
    }

    console.log("Floor Width:", width);
    console.log("Floor Length:", length);

    console.log("Selected Option:", selectedOption);
    
    console.log("No of Tiles:", noOfTiles);
    console.log("Concrete - cement:", concrete[0]);
    console.log("Concrete - Sand:", concrete[1]);
    console.log("Plaster - cement:", plaster[0]);
    console.log("Plaster - Sand:", plaster[1]);
    
    
}
