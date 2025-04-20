//Custom Function With No Return:
void printName() {
  print("My Name Is Shubham!");
}

//Custom Function With Return:
int sumNumbers(int a, int b) {
  return a + b;
}

//Optional Parameter:
myFunc(String name1, [name2]) {
  return "Hello $name1 and $name2";
}

//Optional Parameter:
myFunc2(String name1, {name2}) {
  return "Hello $name1 and $name2";
}

//Main Function To Execute Code:
void main() {
  for (var i = 1; i <= 5; i++) {
    printName();
  }
  print(sumNumbers(5, 4));
  print(myFunc("John"));
  print(myFunc("John", "Cena"));
  print(myFunc2("John", name2: "Krasanski"));
}
