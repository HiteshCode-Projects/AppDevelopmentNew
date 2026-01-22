void main() {
  //()- Symbol
  // void sayHello() {
  //   //Body of function
  //   print("Helllo Guys");
  // }

  // sayHello();

  // void greetUser(String name) {
  //   print("Welcome $name");
  // }

  // greetUser("Harish");
  // greetUser("Aditya");

  //Function with Return Value

  // int calculateTotal(int price, int quantity) {
  //   return price * quantity;
  // }

  // int total = calculateTotal(100, 2);
  // print(total);

  //Function returns Bool

  // bool isAdult(int age) {
  //   return age >= 18;
  // }

  // bool result = isAdult(20);
  // print(result);

  //Arrow Function- has only one line

  // int add(int a, int b) => a + b;
  // print(add(5, 3));

  //Optional parameter

  // void showProfile(String name, [int? age]) {
  //   print("Name $name");

  //   if (age != null) {
  //     print("Age : $age");
  //   }
  // }

  // showProfile("Amit");

  //Name Parameters(very commons in apps)

  // void loginUser(String? email, String? password) {
  //   print("EMail : $email");
  //   print("Password : $password");
  // }

  // loginUser(email: "abc@gmail.com", password: "1234");

  //Function with List

  int calculateTotalCart(List<int> prices) {
    int total = 0;

    for (int price in prices) {
      total += price;
    }
    return total;
  }

  calculateTotalCart([100, 200, 300]);
}
