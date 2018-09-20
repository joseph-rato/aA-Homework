// function mysteryScoping1() {
//   var x = 'out of block';
//   if (true) {
//     var x = 'in block';
//     console.log(x);
//   }
//   console.log(x);
// }
//
// mysteryScoping1();
//
// function mysteryScoping2() {
//   const x = 'out of block';
//   if (true) {
//     const x = 'in block';
//     console.log(x);
//   }
//   console.log(x);
// }
//
// mysteryScoping2();
//
// function mysteryScoping3() {
//   const x = 'out of block';
//   if (true) {
//     var x = 'in block';
//     console.log(x);
//   }
//   console.log(x);
// }
//
// mysteryScoping3();
//
// function mysteryScoping4() {
//   let x = 'out of block';
//   if (true) {
//     let x = 'in block';
//     console.log(x);
//   }
//   console.log(x);
// }
//
// mysteryScoping4();
//
// function mysteryScoping5() {
//   let x = 'out of block';
//   if (true) {
//     let x = 'in block';
//     console.log(x);
//   }
//   let x = 'out of block again';
//   console.log(x);
// }
//
// mysteryScoping5();


function madLib(verb, adj, noun) {
  console.log(`We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`);
}
// function madLib(verb, adj, noun) {
//   return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`
// }

madLib("make", "best", "guac");

function isSubstring(searchString, subString) {
  console.log(searchString.includes(subString));
}
isSubstring("time to program", "time")

function fizzBuzz(array) {
  const result = [];

  array.forEach(el => {
    if ((el % 3 === 0) ^ (el % 5 === 0)) {
      result.push(el)
    }
  });

  return result;
}

function sumOfNPrimes(n) {
  let sum = 1;
  let countPrimes = 0;
  let i = 2;

  function (countPrimes < n) {
    if (isPrime(i)) {
      sum += 1;
      countPrimes++;
    }
    i++;
  }

  return sum;
}
