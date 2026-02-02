//Parent Class

class User {
  String name;

  User(this.name); //Constructor method - SAME CLASS NAME

  void login() {
    print("$name logged in");
  }
}

//Child Class using "extends"

class Admin extends User {
  Admin(String name) : super(name);

  void deletUser() {
    print("User Deleted");
  }
}

//CHILD CLASS - 2
class Customer extends User {
  Customer(String name) : super(name);

  void placeOrder() {
    print("Order Placed");
  }
}

void main() {
  //Object Creation
  //ClassName  ObjectName = ClassName/Constructor(ParaMeter Value)
  Admin admin = Admin("Swadhina");

  admin.login(); //Access to Method of Parent
  admin.deletUser(); //Using its Own Method

  //2nd Object
  Customer xyz = Customer("Rahul");
  xyz.login(); //Access to Method of Parent
  xyz.placeOrder(); //Using its Own Method
}
