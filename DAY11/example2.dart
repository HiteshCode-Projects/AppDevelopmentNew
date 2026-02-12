//Method Overidding - Child Changes Parent Behavior - Same method in Parent and Class

class User {
  //Parent

  void login() {
    print("User Logged in");
  }
}

class Admin extends User {
  //child

  @override
  void login() {
    print("Admin Logged in with full access");
  }
  
}

void main() {
  User abc = User();

  abc.login();

}
