// start with strings, numbers and booleans
let age = 100;
let age2 = age;
console.log(age, age2);
age = 200;
console.log(age, age2);

let name = "Med";
let name2 = name;
console.log(name, name2);
name = "snipes";
console.log(name, name2);

// Let's say we have an array
const players = ["Wes", "Sarah", "Ryan", "Poppy"];

// and we want to make a copy of it.
const team = players;
console.log(team, players);

// You might think we can just do something like this:
// team[3] = 'Lux'
console.log(team, players);

// however what happens when we update that array?
// now here is the problem!
// oh no - we have edited the original array too!
// Why? It's because that is an array reference, not an array copy. They both point to the same array!

// So, how do we fix this? We take a copy instead!
// two ways

// copy using slice()
const team2 = players.slice();

// or create a new array and concat the old one in
// copy using concat()
const team3 = [].concat(players);

// or use the new ES6 Spread
const team4 = [...players];

// Array.from()
const team5 = Array.from(players);

// now when we update it, the original one isn't changed
team2[3] = "Lux";
team3[3] = "Devon";
team4[3] = "Eminem";
team5[3] = "MGK";

console.groupCollapsed(players, team2, team3, team4, team5);

// The same thing goes for objects, let's say we have a person object

// with Objects
const person = {
  name: "Med Aduh",
  age: 29
};

// and think we make a copy:
// const captain = person;
// captain.age = 40;

// console.log(captain); // age: 40

// how do we take a copy instead?
const person2 = Object.assign({}, person, { age: 50, gender: "Male" });

console.log(person);
console.log(person2);

// We will hopefully soon see the object ...spread
const person3 = { ...person };

console.log(person);
console.log(person2);
console.log(person3);

// Things to note - this is only 1 level deep - both for Arrays and Objects. lodash has a cloneDeep method, but you should think twice before using it.
const med = {
  name: "med",
  age: 29,
  social: {
    twitter: "@ramidem",
    facebook: "im.ramidem"
  }
};

const med2 = Object.assign({}, med); // can not go further than 1 level deep
med2.social.twitter = "@mamama";

// poor man's way. not recommended
const med3 = JSON.parse(JSON.stringify(med));
med3.social.twitter = "@supermeatboy";

console.log(med);
console.log(med2);
console.log(med3);
