void main() {
  //Introducing Logic Statements: If, If-Else, Ternary, If-ElseIF-Else
  //Comparisons: >, <, >=, =<, !=, ==
  var num = 5;
  if (num == 5) {
    print("Number Is 5!");
  }
  print("\n");
  //If-Else:
  var num1 = 10;
  if (num1 == 5) {
    print("Number is 5!");
  } else {
    print("Number is $num1");
  }
  print("\n");
  //If and Else-If
  var num2 = 0;
  if (num2 > 0 && num2 % 2 == 0) {
    print("Even Number!");
  } else if (num > 0 && num2 % 2 != 0) {
    print("Odd Number!");
  } else {
    print("Number is 0!");
  }
  print("\n");
  //Ternary Operator
  var num3 = 9;
  (num3 % 2 == 0) ? print("Even Number!") : print("Odd Number!");
}
