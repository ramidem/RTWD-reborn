// functions are values
var triple = function(x) {
  return x * 3;
};

var waffle = triple;

console.log(waffle(5));

// filter
// ======
var animals = [
  { name: "Fluffykins", species: "rabbit" },
  { name: "Caro", species: "dog" },
  { name: "Hamilton", species: "dog" },
  { name: "Harold", species: "fish" },
  { name: "Ursula", species: "cat" },
  { name: "Jimmy", species: "fish" }
];

// filter with `for loop`
var dogs = [];
for (var i = 0; i < animals.length; i++) {
  if (animals[i].species === "dog") dogs.push(animals[i]);
}

console.log(dogs);

// filter with `.filter()`
var fishes = animals.filter(function(animal) {
  return animal.species === "fish";
});

console.log(fishes);
