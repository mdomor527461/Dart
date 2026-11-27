class Subject {
  String name;

  Subject(this.name);

  void defination() {
    print("Subject is an idea where we analyse a sepecific thing");
  }
}

class Science extends Subject {
  Science(String name) : super(name);

  void message() {
    print("Science is knowledge about the natarul events");
  }
}

class Physics extends Science {
  Physics(String name) : super(name);

  void physicsMessage() {
    print(
      "Physics is king off all sciences where we study about matter , space , natural events",
    );
  }
}

void main() {
  Physics book = Physics('physics');
  book.physicsMessage();//own method;
  book.message();//parent method
  book.defination();//grandparent method;
}
