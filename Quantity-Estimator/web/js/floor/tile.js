/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function calculateTile(fwidth, flength, tsvarient = '1x1'){
    var twidth = 1;
    var tlength = 1;
    
    if (tsvarient == '1x1'){
        twidth = 1;
        tlength = 1; 
    }else if (tsvarient == '1x2'){
        twidth = 1;
        tlength = 2; 
    }else if (tsvarient == '2x2'){
        twidth = 2;
        tlength = 2;         
    }else {
        //invalid tile size varient
    }
    
        // Calculate the number of tiles needed
    var numTilesWidth = Math.ceil(fwidth / twidth);
    var numTilesLength = Math.ceil(flength / tlength);
    var totalTiles = numTilesWidth * numTilesLength;
    
    return totalTiles;
}

function calculateConcrete(fwidth, flength){
    const farea = calculateArea(fwidth, flength);
    
    // Assuming 200ft² floor needs 300kg of cement and 1/2 cubic foot of sand
    const cementPerSqFt = 300 / 200; // kg
    const sandPerSqFt = 0.5 / 200; // cubic feet
    
    const cementNeeded = farea * cementPerSqFt; // kg
    const sandNeeded = farea * sandPerSqFt; // cubic feet
    
    return [cementNeeded, sandNeeded]
}

function calculatePlastering(fwidth, flength){
    const farea = calculateArea(fwidth, flength);
    
    // Assuming 200ft² floor needs 100kg of cement and 1/4 cubic foot of sand
    const cementPerSqFt = 100 / 200; // kg
    const sandPerSqFt = 0.25 / 200; // cubic feet
    
    const cementNeeded = farea * cementPerSqFt; // kg
    const sandNeeded = farea * sandPerSqFt; // cubic feet
    
    return [cementNeeded, sandNeeded];
}

function calculateArea(width, length){
    return width * length;
}