void main() {
  String name = "Omor";
  String? email = null;

  print(name);

  // Null check
  if (email != null) {
    print(email.length);
  } else {
    print("Email not provided");
  }

  // Default value
  String userEmail = email ?? "No email";

  print(userEmail);

  // Null-aware operator
  print(email?.length);
}