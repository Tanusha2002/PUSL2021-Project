/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function calculateSlab(rWidth, rLength){
    var rArea = rWidth * rLength;
    
    const cementNeeded = Math.ceil(rArea * (14 / 200));//For 200^ft we need 14 bags of 50kg
    const crushedStonesNeeded = rArea * (100 / 200);//For 200^ft we need 1 CS Cube ps:1 Cube is 100cft
    const sandNeeded = rArea * (100 / 200);//For 200^ft we need 1 sand Cube ps:1 Cube is 100cft
    
    return [cementNeeded, crushedStonesNeeded, sandNeeded];
}
