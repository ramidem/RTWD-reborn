// https://www.youtube.com/watch?v=159EAISAxwg

let dwarves = [
  "Bifur",
  "Bofur",
  "Bombur",
  "Fili",
  "Kili",
  "Oin",
  "Gloin",
  "Thorin",
  "Balin",
  "Dwalin",
  "Nori",
  "Dori"
];

// dwarves.forEach((name, index) => console.log(index, name));

// Convert all the names to lowercase except Thorin
// var lower = [];
// dwarves.forEach(name => {
//   if (name === 'Thorin') {

//   } else {
//     lower.push(name.toLowerCase());
//   }

//   console.table(lower);
// });

dwarves.forEach(function(name) {
  if (name === "Thorin") {
    name = name.toUpperCase();
  } else {
    name = name.toLowerCase();
  }

  console.log(name);
});
