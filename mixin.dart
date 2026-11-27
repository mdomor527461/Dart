mixin canWalk {
  void walk() {
    print("Can Walk");
  }
}

mixin canSpeak {
  void speak() {
    print("Can speak");
  }
}

class Human with canWalk, canSpeak {
  void message() {
    print("I am human and most intellectual creature on earth");
  }
}

void main() {
  Human john = Human();
  john.message();
  john.walk();
  john.speak();
}
