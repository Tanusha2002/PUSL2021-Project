/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


function calculateSheetZnAl(rWidth, rLength) {
    const roofCombination = optimalRoof(rWidth).slice();
    const Y = numberOfSheetsY(rLength);
    
    const sixroof = countOccurrences(roofCombination, 6) * Y;
    const eightroof = countOccurrences(roofCombination, 8) * Y;
    const tenroof = countOccurrences(roofCombination, 10) * Y;
    const twelveroof = countOccurrences(roofCombination, 12) * Y;
    
    return [sixroof, eightroof, tenroof, twelveroof];
}

function optimalRoof(width, lengths = [6, 8, 10, 12]) {
    let best = [];
    lengths.sort((a, b) => b - a);  // sort lengths in descending order

    function helper(w, combo, last) {
        if (w < 0) return;
        if (w === 0) {
            if (isBetter(combo, best)) {
                best = combo.slice();
            }
            return;
        }
        for (let l of lengths) {
            combo.push(l);
            helper(w - l + (last ? 0 : 1), combo, false);
            combo.pop();
        }
    }

    function isBetter(newCombo, oldCombo) {
        let newExcess = newCombo.reduce((a, b) => a + b, 0) - width;
        let oldExcess = oldCombo.length ? oldCombo.reduce((a, b) => a + b, 0) - width : Infinity;
        if (newExcess !== oldExcess) return newExcess < oldExcess;
        if (newCombo.length !== oldCombo.length) return newCombo.length < oldCombo.length;
        return new Set(newCombo).size < new Set(oldCombo).size;
    }

    helper(width, [], true);
    return best;
}

function numberOfSheetsY(length){
    return Math.ceil(length/3.5);
}

function countOccurrences(arr, value) {
    let count = 0;
    for (let i = 0; i < arr.length; i++) {
        if (arr[i] === value) {
            count++;
        }
    }
    return count;
}

