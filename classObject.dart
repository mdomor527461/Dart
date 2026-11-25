import 'dart:io';

class Car {
  String brand;
  String color;

  Car(this.brand, this.color);
  void drive() {
    print("The Car is running broom broom");
  }

  int costCalculate(int km) {
    return km * 140;
  }
}

void main() {
  Car car1 = Car("lamborgini", "yello");
  car1.drive();
  print("do you wanna calculate your cost ? ");
  print("press 1 for calculate");
  print("press 2 for exit");

  int choice = int.parse(stdin.readLineSync()!);

  if (choice == 1) {
    print("Enter How Many km you drive the car : ");
    int km = int.parse(stdin.readLineSync()!);
    print("your total cost is : ");
    print(car1.costCalculate(km));
  } else {
    print("exit the code Thank You!");
  }
}
