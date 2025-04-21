import 'dart:io';

//Solution For Task One!
void taskOne(int age, String name) {
  int finalAge = 100 - age;
  print("$name will turn 100 years old in $finalAge years!");
}

//Solution For Task Two!
void taskTwo(int num) {
  (num > 0 && num % 2 == 0)
      ? print("$num is an even number!")
      : (num > 0 && num % 2 != 0)
      ? print("$num is a odd number!")
      : print("Num is neither odd nor even!");
}

//Solution For Task Three!
void taskThree(List numbers) {
  print('Task Three: ');
  print(numbers.where((num) => num < 5));
}

//Solution For Task Four!
void taskFour(var a, var b) {
  Set one = a.toSet(); //Type Casting Into Set Removes Duplicate Entries
  Set two = b.toSet(); //Type Casting Into Set Removes Duplicate Entries
  print("Task Four: ");
  print(one.intersection(two)); //Provides Common Element In Both!
}

//Solution For Task Five!
void taskFive(var word) {
  if (word == null || word.isEmpty) {
    print("Invalid input!");
    return;
  }
  String reversed = "";
  word =
      word.toUpperCase(); //Converting The Word Into UpperCase For Effective Comparison
  for (int i = word.length - 1; i >= 0; i--) {
    reversed += word[i];
  }
  (reversed == word) ? print("Palindrome!") : print("Not Palindrome!");
}

void main() {
  //Taking User Input For First Task:
  print("Enter Your Current Age: ");
  var age = int.parse(stdin.readLineSync() ?? '0');
  print("Enter Your Name: ");
  String? name = stdin.readLineSync();
  taskOne(age, name!);
  print("\n");
  //Taking User Input For Second Task:
  print("Enter The Number To Check Odd Or Even: ");
  int number = int.parse(stdin.readLineSync() ?? '0');
  taskTwo(number);
  print("\n");
  //Passing The List For Third Task:
  List a = [1, 1, 2, 13, 21, 34, 3, 5, 8, 55, 89];
  taskThree(a);
  print("\n");
  //Passing The List For Fourth Task:
  var aa = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  var bb = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  taskFour(aa, bb);
  print("\n");
  //Taking User Input For Fifth Task:
  print("Enter The Word To Check Palindorme: ");
  String? word = stdin.readLineSync();
  taskFive(word);
}
