//Imports:
import 'dart:io';

//Calculate Area:
double calculateArea(width, height) {
  return width * height;
}

//Print Name:
void printGreeting({String name = "Guest"}) {
  print("Hello ${name}!");
}

void main() {
  print('Enter The Width:');
  double width = double.parse(stdin.readLineSync() ?? "0.0");
  print("Enter The Height: ");
  double height = double.parse(stdin.readLineSync() ?? "0.0");
  double area = calculateArea(width, height);
  print("The area will be: ${area}");
  print("\n");
  printGreeting(name: "Shubham");
  printGreeting();
  print("\n");
}
