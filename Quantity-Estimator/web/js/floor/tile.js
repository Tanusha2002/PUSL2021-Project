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

