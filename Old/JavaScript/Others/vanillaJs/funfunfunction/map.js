var animals = [
  { name: "Fluffykins", species: "rabbit" },
  { name: "Caro", species: "dog" },
  { name: "Hamilton", species: "dog" },
  { name: "Harold", species: "fish" },
  { name: "Ursula", species: "cat" },
  { name: "Jimmy", species: "fish" }
];

// mapping using `for loop`
var names = [];

for (var i = 0; i < animals.length; i++) {
  names.push(animals[i].name);
}

console.log(names);

// mapping using `.map()`
var names = animals.map(function(animal) {
  // var { name, species } = animal;
  // return `${name} is a ${species}`;

  return animal.name;
});

console.log(names);

// mapping using `.map()` and arrow function
var names2 = animals.map(a => a.name);

console.log(names2);
