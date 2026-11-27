class Religion {
  String name;
  String believeType;

  Religion(this.name, this.believeType);

  void message() {
    print("All religion tell the peace");
  }
}

class Islam extends Religion {
  String kitab;
  String prophet;

  Islam(String name, String believeType, this.kitab, this.prophet)
    : super(name, believeType);

  void kalima() {
    print("La ilaha illalahu muhammadur rasulullah");
  }

  void message() {
    print(
      "Kullu nafsing ja ikatul mawoot , faman juhjiha aninnar o udkhilal jannah fa kad fajha",
    );
  }
}

void main() {
  Islam religion = Islam("Islam", "one god", "al quran", "hajrat muhammad sa.");
  religion.kalima(); //own class method;
  religion.message();
  print(religion.believeType);
}
