
void main() {
  // 1. Simple Function
  greet();

  // 2. Function with Parameters
  add(10, 20);

  // 3. Function with Return Value
  int result = multiply(5, 4);
  print(result);

  // 4. Arrow Function
  print(square(5));

  // 5. Optional Positional Parameters
  introduce("Omor");
  introduce("Omor", 21);

  // 6. Named Parameters
  showInfo(name: "Omor", age: 21);

  // 7. Required Named Parameters
  display(name: "Omor");

  // 8. Anonymous Function
  var message = () {
    print("Hello from anonymous function");
  };
  message();

  // 9. Higher-Order Function
  execute(greet);

  // 10. Function with Optional Named Parameter
  welcome("Omor", age: 21);
}

// 1. Simple Function
void greet() {
  print("Hello World");
}

// 2. Function with Parameters
void add(int a, int b) {
  print(a + b);
}

// 3. Function with Return Value
int multiply(int a, int b) {
  return a * b;
}

// 4. Arrow Function
int square(int n) => n * n;

// 5. Optional Positional Parameters
void introduce(String name, [int? age]) {
  print("Name: $name, Age: $age");
}

// 6. Named Parameters
void showInfo({String? name, int? age}) {
  print("Name: $name, Age: $age");
}

// 7. Required Named Parameters
void display({required String name}) {
  print("Name: $name");
}

// 8. Anonymous Function
// Demonstrated inside main()

// 9. Higher-Order Function
void execute(Function callback) {
  callback();
}

// 10. Optional Named Parameter
void welcome(String name, {int? age}) {
  print("Welcome $name, Age: $age");
}
