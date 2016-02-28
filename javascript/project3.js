// Euler Project #3
/** 
 * The prime factors of 13195 are 5, 7, 13 and 29.
 * What is the largest prime factor of the number 600851475143 ?
 */
// number may take a while to interpret, works with smaller numbers just fine
var max = 13195;
var numList = [];

function prime(num) {
    for(var i = 2; i <= Math.ceil(Math.sqrt(num)); i++) {
        if(num % i === 0) {
            return false;
        }
    }
    return true;
}

for(var x = 2; x < max; x++) {
    if(max % x === 0) {
        if(prime(x)) {
            numList.push(x);
        }
    }
}
var l = numList.length;
console.log(numList[l-1]);
