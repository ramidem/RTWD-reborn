// Recursion is simply when a function calls itself.
// https://codeburst.io/learn-and-understand-recursion-in-javascript-b588218e87ea

function factorial(x) {
  // terminate
  if (x < 0) return;

  // base
  if (x === 0) return 1;

  return x * factorial(x - 1);
}

console.log(factorial(7));

let countdownFrom = num => {
  if (num === 0) return;
  console.log(num);
  countdownFrom(num - 1);
};

console.log(countdownFrom(10));

//

let categories = [
  { id: "animals", parent: null },
  { id: "mammals", parent: "animals" },
  { id: "cats", parent: "mammals" },
  { id: "dogs", parent: "mammals" },
  { id: "chihuahua", parent: "dogs" },
  { id: "labrador", parent: "dogs" },
  { id: "persian", parent: "dogs" },
  { id: "siamese", parent: "dogs" }
];

let makeTree = (categories, parent) => {
  console.log(parent);
  // debugger;
  let node = {};
  categories
    .filter(category => {
      return category.parent === parent;
    })
    .forEach(
      category => (node[category.id] = makeTree(categories, category.id))
    );

  return node;
};

// console.log(categories);
console.log(JSON.stringify(makeTree(categories, null), null, 2));

let makeAnotherTree = function(array, parent) {
  let node = {};

  for (let i = 0; i < array.length; i++) {
    if (array[i].parent === parent) {
      node[array[i].id] = makeAnotherTree(array, array[i].id);
    }
  }

  console.log(node);
  return node;
};

console.log(JSON.stringify(makeAnotherTree(categories, null), null, 2));
