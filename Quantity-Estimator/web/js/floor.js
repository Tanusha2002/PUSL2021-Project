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
        var selectedSizeVarient = document.querySelector('input[name="sVarient"]:checked').value        
    }catch (err){
        selectedSizeVarient = '1x1';
    }

    
    if(selectedOption == 'tile'){
        var answer = calculateTile(width, length, selectedSizeVarient);
    }else if (selectedOption == 'carpert'){
        
    }else{
        //invalid option
    }

    console.log("Width:", width);
    console.log("Length:", length);

    console.log("Selected Option:", selectedOption);
    
    console.log("No of Tiles:", answer);
}
