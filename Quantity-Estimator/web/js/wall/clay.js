/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

const claybHeight = 2;
const claybLength = 8;
const claycementLayer = 0.5;

function calculateClayBricks(wHeight, wLength) {
    var numBricksHeight = Math.ceil((wHeight-cementLayer)/ (bHeight+cementLayer));
    var numBricksLength = Math.ceil((wLength-cementLayer)/ (bLength+cementLayer));
    var totalBricks = numBricksLength * numBricksHeight;
    
    return totalBricks;
}

function calculateClayCement(numBricks) {
    const cementPerBrick = 50 / 100; // 50 kg of cement for 100 bricks
    const cementNeeded = numBricks * cementPerBrick;
    return cementNeeded;
}

function calculateClaySand(numBricks) {
    const sandPerBrick = 1/800; // 1/8 cubic feet of sand for 100 bricks
    const sandNeeded = numBricks * sandPerBrick;
    return sandNeeded;
}