/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function calculateWall(){
    // Get length and width values   
    var height = document.getElementById('height').value * 12;//converting feet into inches
    var length = document.getElementById('length').value * 12;//converting feet into inches
    
    // Get the selected radio button value
    var selectedOption = document.querySelector('input[name="options"]:checked').value;
    
    async function calculateAsync() {
    if(selectedOption == 'clay'){
        var noOfBricks = calculateClayBricks(height, length);
        var cement = calculateClayCement(noOfBricks);
        var sand = calculateClaySand(noOfBricks); 
        
        await fetchProductDetails(2, noOfBricks, true);
        await wait(100);
        await fetchProductDetails(11, cement);
        await wait(100);
        await fetchProductDetails(12, sand);   
        
    } else if(selectedOption == 'cement'){
        noOfBricks = calculateCementBricks(height, length);
        cement = calculateCementCement(noOfBricks);
        sand = calculateCementSand(noOfBricks); 
               
        await fetchProductDetails(1, noOfBricks, true);
        await wait(100);
        await fetchProductDetails(11, cement);
        await wait(100);
        await fetchProductDetails(12, sand);   
    }else{
        //invalid option
    }
    
    console.log("Wall Height:", height);
    console.log("Wall Length:", length);
    console.log("Selected Option:", selectedOption);
    
    console.log("No of Bricks:", noOfBricks);
    console.log("Cement:", cement);
    console.log("Sand:", sand);
    

    }
    
    calculateAsync();    
}

function wait(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
}