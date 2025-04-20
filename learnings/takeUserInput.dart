//Import The Library:
import 'dart:io';

void main() {
  //Ask For Data:
  print("Enter Your Full Name: ");
  //Allow User To Pass The Data:
  var fullName = stdin.readLineSync();
  print("Your FullName: $fullName");
  //Also, Can't Assign ReadLineSync To Integer Or Other Non-String DataType
  print("Enter Your Current Address: ");
  String? address = stdin.readLineSync(); //Can't Be Null
  print("Your Address: $address");
  //Try Me:
  print("Enter Your HomeTown: ");
  // String homeTown = stdin.readLineSync(); Can Be Null
  // print("Your Home-Town: $homeTown");
}
