console.log("Problem 3");
console.log("The prime factors of 13195 are 5, 7, 13 and 29.");
console.log("What is the largets prime factor of the number 600851475143 ?");

var isPrime = function(number) {
    for(var i = 2; i <= Math.sqrt(number); i++) {
        if(number % i === 0) {
            return false;
        }
    }
    return true;
};

var largestPrimeFactor = function(inputNumber) {
    var largestPrime = 1;
    var num = inputNumber;
    
    if(inputNumber <= 0) {
        return "Invalid Input";
    }
    
    while(num > 1) {
        var i = 2;
        while(i <= num) {
            if(isPrime(i) && num % i === 0) {
                num = num / i;
                if(i == num) {
                    return i;
                } else if(i > largestPrime) {
                    largestPrime = i;
                }
                break;
            }
            i++;
        }
    }
    
    return largestPrime;
};

console.log(largestPrimeFactor(13195));
console.log(largestPrimeFactor(1));
console.log(largestPrimeFactor(2));
console.log(largestPrimeFactor(999999));
console.log(largestPrimeFactor(0));
//Input is prime (execution time = ~15s)
console.log(largestPrimeFactor(15485863)); 

