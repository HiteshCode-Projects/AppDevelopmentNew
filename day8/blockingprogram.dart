// void main() {
//   print("App Started");

//   fetchData();

//   print("App ready");
// }

// void fetchData() {
//   for (int i = 0; i < 1000000000; i++) {}
//   print("Data Loaded");
// }

//Future= Result that will come later
Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 3), () => "Data Loaded");
}

Future<void> main() async {
  print("App Started");

  String result = await fetchData();

  print(result);

  print("App Ready");
}
