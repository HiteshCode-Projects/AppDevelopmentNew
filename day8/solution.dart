Future<String> getPizza() {
  return Future.delayed(Duration(seconds: 5), () => "Pizza Delivered");
}

//async and await (Wait Politely)

Future<void> main() async {
  print("Order Pizza");

  String result = await getPizza();
  print(result);

  print("Eat Pizza");

  void add() {
    var a = 10;
    var b = 20;
    print(a + b);
  }

  add();
}
