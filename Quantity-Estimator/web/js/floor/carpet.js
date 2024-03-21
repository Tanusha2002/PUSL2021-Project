/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
    
const cWidth = 6; // Width of the carpet

function calculateCarpet(fwidth, flength) {
    const wastageWidth = WCalculateWastage(fwidth, flength);
    const wastageLength = LCalculateWastage(fwidth, flength);
    
    if (wastageWidth > wastageLength) {
        return [Math.ceil(flength / cWidth) * fwidth, "Width"];
    } else if (wastageLength > wastageWidth) {
        return [Math.ceil(fwidth / cWidth) * flength, "Length"];
    } else {
        const cutWidth = ((Math.ceil(flength / cWidth)-1) * cWidth) + fwidth;
        const cutLength = ((Math.ceil(fwidth / cWidth)-1) * cWidth) + flength;
        
        if (cutWidth > cutLength){
            return [Math.ceil(flength / cWidth) * fwidth, "Width"];
        } else {
            return [Math.ceil(fwidth / cWidth) * flength, "Length"];
        }
    }
}

function WCalculateWastage(fwidth, flength) {
    const carpetRepitition = Math.ceil(fwidth / cWidth);
    return ((carpetRepitition * cWidth) - fwidth) * flength;
}

function LCalculateWastage(fwidth, flength) {
    const carpetRepitition = Math.ceil(flength / cWidth);
    return ((carpetRepitition * cWidth) - flength) * fwidth;
}
