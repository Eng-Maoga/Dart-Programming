// A Dart program to find the sum of two numbers using an arrow function

void main() {
  // Define an arrow function that adds two numbers
  int sum(int a, int b) => a + b;

  // Call the function and store the result
  int result = sum(10, 15);

  // Print the result
  print("The sum of 10 and 15 is $result");
}