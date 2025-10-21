// Define a fixed list of possible colors
enum Color { red, green, blue }
enum Day { monday, tuesday, wednesday, thursday, friday, saturday, sunday }

void main() {
  Color paint = Color.green; // Assign a specific color
  Day today = Day.saturday; // Assign a specific day 

  // Check which color was chosen
  if (paint == Color.green) {
    print('The color is green!');
  } else {
    print('It’s not green.');
  }
  // Check which day it is
  if (today == Day.tuesday) {
    print('It’s the weekend!');
  } else {
    print('It’s a weekday.');
  }
}