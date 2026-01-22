void main() {
  String user = "JOhn";

  int age = 22;

  print("My Name is $user and my age is $age");

  //Concat - Joining Strings
  String firstname = "Mike";
  String secondName = "Tyson";

  String fullName = firstname + "  " + secondName;
  print(fullName);

  //Length : No of Characters in String
  String password = "123456";
  print(password.length);

  String city = "delhi";
  print(city.toUpperCase());
  print(city.toLowerCase());

  //Search inside String
  String message = "Welcome to Dart App";

  if (message.contains("Dart")) {
    print("Dart word found");
  }

  //Replace Text
  String phone = "123-456-7890";

  String cleanPhone = phone.replaceAll("-", "");
  print(cleanPhone);

  //Trim Extra Spaces
  String usernamee = "     admin    ";
  print(usernamee.trim());
}
