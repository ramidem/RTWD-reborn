// https://www.youtube.com/watch?v=PB_d3uBkQPs

var animal = {
  // options
  species: "dog",
  weight: 23,
  sound: "woof"
};

// destructure the animal object into two local variables
var { species, sound } = animal;

console.log(`The ${species} says ${sound}!`);
console.log(`The ${species}'s weight is ${animal.weight}`);

// easy way to deal with option objects
makeSound({
  // species: "cat",
  weight: 15,
  sound: "meow"
});

// function makeSound(opt) {
//   console.log(`The ${opt.species} says ${opt.sound}!`);
// }

// function makeSound(opt) {
//   opt.species = opt.species || "animal";
//   console.log(`The ${opt.species} says ${opt.sound}!`);
// }

// function makeSound(opt) {
//   var species = opt.species || "animal";
//   var sound = opt.sound;
//   console.log(`The ${species} says ${sound}!`);
// }

// function makeSound(opt) {
//   var { species, sound } = opt;
//   species = species || "animal";
//   console.log(`The ${species} says ${sound}!`);
// }

function makeSound({ species = "animal", sound }) {
  console.log(`The ${species} says ${sound}!`);
}
