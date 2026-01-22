bool loginUser(String username, String password) {
  return username == "admin" && password == "1234";
}

void main() {
  bool isLoggedIn = loginUser("admindpt", "1234");

  if (isLoggedIn) {
    print("Welcome to Instgram");
  } else {
    print("Invalid Username or Password");
  }
}
