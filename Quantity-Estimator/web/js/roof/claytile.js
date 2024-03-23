/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function calculateClayTile(rWidth, rLength) {
    const tWidth = 10/12;
    const tLength = 1 + 1/3;
    
    var numTilesWidth = Math.ceil(rLength / tWidth);
    var numTilesLength = Math.ceil(rWidth / tLength);
    var totalTiles = numTilesWidth * numTilesLength;
    
    return totalTiles;
}
