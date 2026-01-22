Future<String> processPayment(double amount) {
  return Future.delayed(
    Duration(seconds: 5),
    () => "Payment of $amount Successfull",
  );
}

Future<void> main() async {
  print("Payment Processing");

  String status = await processPayment(499.00);

  print(status);

  print("Order Confirmed");
}
