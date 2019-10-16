// Functors are objects that have map method/s

const dragons = [
  { name: "gradon1", health: 70 },
  { name: "gradon2", health: 2034 },
  { name: "gradon3", health: 21 }
];

const names = dragons.map(dragon => dragon.name);

console.log(names);
