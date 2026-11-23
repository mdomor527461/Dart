void main() {
  // Normal variables
  String name = "Omor";
  int age = 21;
  double cgpa = 3.80;
  bool isActive = true;

  // Type inference
  var department = "Computer Science";

  // Constant variables
  final registrationDate = DateTime.now();
  const institute = "Pabna Polytechnic Institute";

  const sibilings = ["samiya", "abu bakar"];
  print(sibilings);

  // Nullable variable
  String? phone;

  // Display information
  print("Student Name: $name");
  print("Age: $age");
  print("CGPA: $cgpa");
  print("Active: $isActive");
  print("Department: $department");
  print("Registration: $registrationDate");
  print("Institute: $institute");
  print("Phone: ${phone ?? 'Not provided'}");
}
