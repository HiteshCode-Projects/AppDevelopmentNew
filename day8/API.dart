//API = Messenger

// Your App ---> ask a server
//server ---> sends data back.

//Weather Application

Future<String> fetchWeatherFromServer() {
  return Future.delayed(Duration(seconds: 2), () => "Temperature is 28 Degree");
}

Future<void> main() async {
  print("Opening Weather App");

  print("Fetching Weather.....");

  String weather = await fetchWeatherFromServer();
  print(weather);

  print("Data Loaded");
}
