import "dart:io";

void main() {
  //Asking For Input:
  print("Enter Your Age: ");
  //Storing The Data:
  var age = stdin.readLineSync();
  //Parsing Into Int:
  int nummy = int.parse(age ?? '0');
  print(100 - nummy);
}
