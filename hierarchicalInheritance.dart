
class Species {
  String name;

  Species(this.name);

  void definition() {
    print(
      "A group of related organisms that share common characteristics and can interbreed to produce fertile offspring.",
    );
  }
}

class Platyhelminthes extends Species {
  Platyhelminthes(String name) : super(name);

  void characteristics() {
    print(
      "Platyhelminthes are soft-bodied, unsegmented invertebrates with dorsoventrally flattened bodies and bilateral symmetry.",
    );
  }
}

class Corduta extends Species {
  Corduta(String name) : super(name);

  void characteristics() {
    print(
      "Chordates possess a notochord, a dorsal hollow nerve cord, pharyngeal gill slits, a post-anal tail, and an endostyle or thyroid gland at some stage of their life.",
    );
  }
}

// Subphylum: Urochordata
class Urochordata extends Corduta {
  Urochordata(String name) : super(name);

  @override
  void characteristics() {
    print(
      "Urochordates are marine animals in which the notochord and dorsal nerve cord are present only in the larval tail.",
    );
  }
}

// Subphylum: Cephalochordata
class Cephalochordata extends Corduta {
  Cephalochordata(String name) : super(name);

  @override
  void characteristics() {
    print(
      "Cephalochordates are small marine animals that retain the notochord throughout their life, extending from head to tail.",
    );
  }
}

// Subphylum: Vertebrata
class Vertebrata extends Corduta {
  Vertebrata(String name) : super(name);

  @override
  void characteristics() {
    print(
      "Vertebrates possess a vertebral column, a well-developed brain, a dorsal nerve cord, and a highly developed organ system.",
    );
  }
}

void main() {
  Urochordata urochordata = Urochordata("Urochordata");
  Cephalochordata cephalochordata =
      Cephalochordata("Cephalochordata");
  Vertebrata vertebrata = Vertebrata("Vertebrata");

  print(urochordata.name);
  urochordata.characteristics();

  print("\n${cephalochordata.name}");
  cephalochordata.characteristics();

  print("\n${vertebrata.name}");
  vertebrata.characteristics();
}
