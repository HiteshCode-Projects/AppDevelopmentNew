// void main() {
//API - Like data

// List<Map<String, dynamic>> users = [
//   {"name": "John", "email": "j@gmai.com"},
//   {"name": "Bob", "email": "b@gmai.com"},
//   {"name": "Charlie", "email": "c@gmai.com"},
// ];

// //Travel inside loop
// for (var user in users) {
//   print("Name  : ${user["name"]} , Email : ${user["email"]}");
// }
//}

//Real App Example - User Login Check
//data for user(username , pass) and admin(username , password)

List<Map<String, String>> userss = [
  {"username": "admin", "password": "1234"},
  {"username": "user", "password": "0000"},
];

void main() {
  for (var xyz in userss) {
    if (xyz["username"] == "admin" && xyz["password"] == "1234") {
      print("Login Sucessfully");
    } else {
      print("No Admin Acesss");
    }
  }
}
