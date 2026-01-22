void main() {
  //Maps (Key:Value Pair ) - { }  curly Bracket
  //User Profile , Api Data , JSON Data

  //name:"Aditya"
  //email:"abc@gmail.com"

  Map<String, String> user = {"name": "Rahul", "email": "rahul@gmail.com"};

  Map<String, dynamic> userProfile = {
    "name": "Amit",
    "age": 22,
    "isLoggedin": true,
  };

  //Acess The data we need Key Name
  print(userProfile["isLoggedin"]);
  print(userProfile["name"]);

  //Update - Existing data
  userProfile["age"] = 36;
  print(userProfile);

  //remove data
  userProfile.remove("name");
  print(userProfile);
}
