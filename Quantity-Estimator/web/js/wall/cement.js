/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

const bHeight = 7;
const bLength = 14;
const cementLayer = 1;

function calculateCementBricks(wHeight, wLength) {
    var numBricksHeight = Math.ceil((wHeight-cementLayer)/ (bHeight+cementLayer));
    var numBricksLength = Math.ceil((wLength-cementLayer)/ (bLength+cementLayer));
    var totalBricks = numBricksLength * numBricksHeight;
    
    return totalBricks;
}

function calculateCementCement(numBricks) {
    const cementPerBrick = 50 / 100; // 50 kg of cement for 100 bricks
    const cementNeeded = numBricks * cementPerBrick;
    return cementNeeded;
}

function calculateCementSand(numBricks) {
    const sandPerBrick = 1/800; // 1/8 cubic feet of sand for 100 bricks
    const sandNeeded = numBricks * sandPerBrick;
    return sandNeeded;
}
