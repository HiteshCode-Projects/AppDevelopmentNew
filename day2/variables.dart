void main() {
  //Iny (Whole Number)
  //Example
  //Age , OTP , Likes , Quantity

  // int age = 21;
  // int likes = 150;
  // int items = 2;

  // print(age);

  // //double - Decimal Number
  // //price ,ratings , heights

  // double price = 99.99;
  // double rating = 4.5;
  // double height = 5.8;

  // print(rating);

  // //String - Text
  // //Example username ,email , message , feedback
  // String username = "Harish";
  // String email = "h@gmail.com";
  // String message = "Welcome to app";

  // print(email);

  // //bool - boolean - true or false
  // // Login Status , Dark Mode , Payment Success

  // bool isLoggedIn = true;
  // print(isLoggedIn);

  // // var (Smart Type)
  // var name = "Sathwik";

  // var phoneno = 84584376893;

  // print(name);

  // //dynamic (can change the Type)

  // dynamic address = "India";

  // address = 401;

  // print(address);

  // //const - Fixed forever

  // const appName = "MyApp";

  // const pi = 3.14;

  // print(appName);

  //Operatos and Expressions
  //1. Arithmetic Operators =  + , / , - , *
  //Used for : Cart Total , Wallet , Price Calculation

  // int price = 100;

  // int qty = 2;

  // int total = price * qty;

  // print("The Total Bill is :  $total");

  // double walllet = 500.00;
  // double bill = 150.00;

  // double balance = walllet - bill;
  // print("Balance is $balance");

  //2. Relational Operators(Comaprison Operator > , < , >= < =)
  //Age check , Balance Check

  // int age = 18;
  // bool canVote = age >= 18;
  // print(canVote);

  // double balance1 = 500.00;
  // bool canPay = balance1 >= 600;
  // print(canPay);

  // var a = "10";
  // var b = 10;
  // bool Output = a == b;
  // print(Output);

  // 3. LOGICAL Op :
  //AND  --   &&: If Both Condition is TRUE Then Only Output TRUE

  //OR  -- || : Only if one condition is also True Then Output is True

  //NEGATION: Opposite

  //Login , Permisson

  // bool isLogged = true;
  // bool hasSciption = false;

  // bool canWatchMovie = isLogged && hasSciption;
  // print(canWatchMovie);

  // bool isAdmine = true;
  // bool isModerator = false;

  // bool canDelete = isAdmine || isModerator;
  // print(canDelete);

  //Assigment Operator - Assign Value

  // int score = 100;
  // // score = score + 5;
  // // print(score);

  // score += 10;
  // print(score);

  //Ternary Operator - Decsion in on Line or Condition in one line
  //syntax  condition -  ? "True" : "False"

  // bool loggin = true;

  // String message = loggin ? "Welcome " : "Please Login";
  // print(message);

  // bool darkMode = false;
  // String theme = darkMode ? "Dark Mode" : "Light Mode";
  // print(theme);

  //Null-aware Operator ??

  // String? name;

  // String displayName = name ?? "Guest";
  // print(displayName);

  //name - null

  //Real - App Example

  String? username;
  bool isLogg = true;

  String display = isLogg ? (username ?? " Hello Guest") : "Login First";

  print(display);
}
