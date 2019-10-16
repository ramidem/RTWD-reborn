// READ
// https://hackernoon.com/functors-in-javascript-20a647b8f39f

// NO FUNCTOR
// function plus1(value) {
//   return value + 1;
// }

// console.log(plus1(3));

// plus1
function plus1(value) {
  // if there is more than one parameter
  if (Array.isArray(value)) {
    var newArray = [];

    for (var i = 0; i < value.length; i++) {
      newArray[i] = value[i] + 1;
    }

    return newArray;
  }

  // in case the the value provided is string
  if (typeof value === "string") {
    var chars = value.split("");
    var newCharsArray = [];

    for (var i = 0; i < chars.length; i++) {
      newCharsArray[i] = String.fromCharCode(chars[i].charCodeAt(0) + 1);
    }

    return newCharsArray.join("");
  }

  // in case there is only one parameter
  return value + 1;
}

console.log(plus1([3, 4]));
console.log(plus1("BCD"));

// minus1
function minus1(value) {
  // if there is more than one parameter
  if (Array.isArray(value)) {
    var newArray = [];

    for (var i = 0; i < value.length; i++) {
      newArray[i] = value[i] - 1;
    }

    return newArray;
  }

  // in case the the value provided is string
  if (typeof value === "string") {
    var chars = value.split("");
    var newCharsArray = [];

    for (var i = 0; i < chars.length; i++) {
      newCharsArray[i] = String.fromCharCode(chars[i].charCodeAt(0) - 1);
    }

    return newCharsArray.join("");
  }

  // in case there is only one parameter
  return value - 1;
}
console.log(minus1([3, 4]));
console.log(minus1("BCD"));

// FUNCTORS

// using .map()
console.log([3, 4].map(plus1));

// stringFunctor(value, fn)
function stringFunctor(value, fn) {
  var chars = value.split("");

  return (
    chars
      // map each character
      .map(function(char) {
        return String.fromCharCode(fn(char.charCodeAt(0)));
      })
      .join("")
  );
}

function plusOne(value) {
  return value + 1;
}

function minusOne(value) {
  return value - 1;
}

console.log(stringFunctor("ABC", plus1));
console.log(stringFunctor("ABC", plusOne));

console.log(stringFunctor("ABC", minus1));
console.log(stringFunctor("ABC", minusOne));
