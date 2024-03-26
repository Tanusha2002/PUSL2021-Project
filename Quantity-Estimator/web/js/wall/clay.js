/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

const claybHeight = 2;
const claybLength = 8;
const claycementLayer = 0.5;

function calculateClayBricks(wHeight, wLength) {
    var numBricksHeight = Math.ceil((wHeight-claycementLayer)/ (claybHeight+claycementLayer));
    var numBricksLength = Math.ceil((wLength-claycementLayer)/ (claybLength+claycementLayer));
    var totalBricks = numBricksLength * numBricksHeight;
    
    return totalBricks;
}

function calculateClayCement(numBricks) {
    const cementPerBrick = 1 / 100; // 50 kg of cement for 100 bricks
    const cementNeeded = numBricks * cementPerBrick;
    return Math.ceil(cementNeeded);
}

function calculateClaySand(numBricks) {
    const sandPerBrick = 12.5/100; // 1/8 cubic feet of sand for 100 bricks
    const sandNeeded = numBricks * sandPerBrick;
    return Math.ceil(sandNeeded);
}