/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
    
const cWidth = 6; // Width of the carpet

function calculateCarpert(fwidth, flength) {
    const wastageWidth = WCalculateWastage(fwidth, flength);
    const wastageLength = LCalculateWastage(fwidth, flength);
    
    if (wastageWidth > wastageLength) {
        return [Math.ceil(flength / cWidth) * fwidth, "Length"];
    } else if (wastageLength > wastageWidth) {
        return [Math.ceil(fwidth / cWidth) * flength, "Width2"];
    } else {
        const cutWidth = ((Math.ceil(flength / cWidth)-1) * cWidth) + fwidth;
        const cutLength = ((Math.ceil(fwidth / cWidth)-1) * cWidth) + flength;
        
        if (cutWidth > cutLength){
            return [Math.ceil(flength / cWidth) * fwidth, "Width1"];
        } else {
            return [Math.ceil(fwidth / cWidth) * flength, "L"];
        }
    }
}

function WCalculateWastage(fwidth, flength) {
    const carpertRepitition = Math.ceil(fwidth / cWidth);
    return ((carpertRepitition * cWidth) - fwidth) * flength;
}

function LCalculateWastage(fwidth, flength) {
    const carpertRepitition = Math.ceil(flength / cWidth);
    return ((carpertRepitition * cWidth) - flength) * fwidth;
}

function findDimensionsForEqualWastage() {
    for (let W = 1; W <= 100; W++) {
        for (let L = 1; L <= 100; L++) {
            const wastageWidth = ((Math.ceil(L / 6) * 6) - L) * W;
            const wastageLength = ((Math.ceil(W / 6) * 6) - W) * L;
            
            if (wastageWidth === wastageLength) {
                console.log(`Width: ${W}, Length: ${L}`);
                return;
            }
        }
    }
    console.log("Dimensions not found within the range.");
}

findDimensionsForEqualWastage();