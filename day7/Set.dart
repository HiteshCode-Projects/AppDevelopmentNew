//Set Is Similar to Like LIST - But no Duplicate data is allowed
void main() {
  // Set<String> categories = {
  //   "Electronics",
  //   "Fashion",
  //   "Books",
  //   "Fashion",
  //   "Home",
  // };

  // categories.add("Travel");

  // categories.remove("Books");

  // if (categories.contains("Fashion")) {
  //   print("Fashion Selected");
  // }

  // print(categories);

  //Convert List To Set(Remove Duplicate)

  // List<String> items = ["Apple", "Mango", "Apple"];

  // Set<String> uniqueitems = items.toSet();

  // print(uniqueitems);

  //Notofcation
  Set<String> notifications = {};

  notifications.add("Whatsapp Message");
  notifications.add("Zomato");
  notifications.add("Whatsapp Message");
  notifications.add("unlox");

  print(notifications);

  for (var note in notifications) {
    print(note);
  }
}
