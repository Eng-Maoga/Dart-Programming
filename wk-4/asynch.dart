Future<void> main() async {
  print('Downloading...');

  // Simulate a time-consuming task using Future.delayed
  await Future.delayed(Duration(seconds: 2)); // Wait for 2 seconds

  print('Download complete!');
}