// Currying is a technique of evaluating function with multiple arguments,
// into sequence of function with single argument.

// currying(l * w * h)
// currying(1)(2)(3);

// let dragon = function(name, size, element) {
//   return `${name} is a ${size} dragon that breathes ${element}!`;
// };

// let dragon = function(name) {
//   return function(size) {
//     return function(element) {
//       return `${name} is a ${size} dragon that breathes ${element}!`;
//     };
//   };
// };

// let dragon = (name, size, element) =>
//   `${name} is a ${size} dragon that breathes ${element}!`;

// curried
let dragon = name => size => element =>
  `${name} is a ${size} dragon that breathes ${element}!`;

console.log(dragon("george")("micro")("maggots"));

let dragons = [
  { name: "noomi", element: "fire" },
  { name: "karo", element: "lightning" },
  { name: "doomer", element: "fire" }
];

// let hasElement = function(element, obj) {
//   return obj.element === element;
// };

let hasElement = function(element) {
  return function(obj) {
    return obj.element === element;
  };
};

let fireDragons = dragons.filter(hasElement("fire", dragon));

console.log(fireDragons);

// console.log(hasElement("fire", dragons[0]));
console.log(hasElement("fire")(dragons[0]));
