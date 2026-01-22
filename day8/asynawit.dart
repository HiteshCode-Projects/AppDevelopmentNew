void main() {
  print("Start App");

  fetchData();

  print("End App");
}

void fetchData() {
  for (int i = 0; i < 1000000; i++) {}
  print("Data Loaded");
}
