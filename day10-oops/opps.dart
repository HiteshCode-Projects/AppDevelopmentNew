class User {
  String name = "";
  int age = 0;

  //Constructor - Special Type of method which runs whenever you call the className
  // use SAME NAME AS CLASS NAME IMP - use this keyword to fetch the value of Parameters
  User(this.name, this.age);

  //Task - Method(Functions)

  void greet() {
    print("Hello , My Name is $name");
  }
}

void main() {
  // User user1 = User();

  // user1.name = "Aditya";
  // user1.age = 22;

  // User user2 = User();

  // user2.name = "Charlie";
  // user2.age = 15;
  // user2.greet();

  // print(user1.name);

  // print(user2.name);

  //Calling with Constructor

  User user3 = User("Sneha", 21);
  print(user3.name);
}
