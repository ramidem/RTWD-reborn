// https://www.youtube.com/watch?v=6sQDTgOqh-I

const dragonEvents = [
  { type: "attack", value: 12, target: "player-dorkman" },
  { type: "yawn", value: 40 },
  { type: "eat", target: "horse" },
  { type: "attack", value: 23, target: "player-fullfykins" },
  { type: "attack", value: 12, target: "player-dorkman" }
];

const totalDmgOnDorkman = dragonEvents
  .filter(e => e.type === "attack" && e.target === "player-dorkman")
  .map(e => e.value)
  .reduce((total, dmg) => (total || 0) + dmg);

console.log("total damage on dorkman: ", totalDmgOnDorkman);
