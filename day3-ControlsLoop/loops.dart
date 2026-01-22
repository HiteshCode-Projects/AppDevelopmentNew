void main() {
  //Task: Print Numbers 1 to 10
  //   print("1");
  //   print("2");
  //   print("3");
  //  // .....
  //   print("10");

  //Task: Print Numbers 1 to 10
  // Loops
  //1. for(starting Point ;  conditional/ending point; operation)
  // ++ -> Adds by 1 only
  // for (int i = 1; i <= 10; i++) {
  //   print(" Loading items : $i");
  // }

  //Login Attempts

  //2. While Loop(condtion)- Entry Controlled Loop

  // int attempts = 1;

  // while (attempts <= 3) {
  //   //
  //   print("Login attempst $attempts");
  //   attempts++;
  // }

  //3- Do While Loop - Do the task Once and Checks The condtion

  // int count = 1;

  // do {
  //   print("Showing Welcome Message");
  //   count++;
  // } while (count <= 1);

  //4. Break - STOP Loop

  // for (int i = 1; i <= 5; i++) {
  //   if (i == 3) {
  //     print("Item Found");
  //     break;
  //   }
  //   print("Checking Item $i");
  // }

  //List - It can Store Multiple Data at one Place - [] Index No Starts with 0

  List<String> products = ["Mobile", "Laptop", "Tablet", "Headphone"];
  print(products[2]);
  print(products.length); //length = Total No of Data inside List

  for (int i = 0; i < products.length; i++) {
    print("Products : ${products[i]}");
  }
}
