// https://www.youtube.com/watch?v=Tllw4EPhLiQ

class Mammal {
  // class can have constructors
  constructor(sound) {
    this.sound = sound;
  }

  // can also have methods
  talk() {
    return this._sound;
  }
}

// classes can be inheritted
class Dog extends Mammal {
  constructor() {
    super("aw aw!"); // calls the constructor of Mammal
  }
}

let fluffykins = new Dog();

fluffykins._sound = "meow!";

let x = fluffykins.talk();

x;
