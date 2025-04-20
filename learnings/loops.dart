void main() {
  //Introducing Loops: For, For-In, While, Do-While:
  //For Loop:
  var num = 5;
  var num1 = num;
  for (int i = num; i >= 1; i--) {
    print(i);
  }
  print("\n");
  //While Loop:
  while (num >= 1) {
    print(num);
    num--;
  }
  print("\n");
  //For-In Loop [Most Important]:
  var people = ['Alex', 'Steve', 'Doink'];
  for (var name in people) {
    print(name);
  }
  print("\n");
  //Do-While Loop:
  do {
    print(num1);
    num1--;
  } while (num1 >= 1);
}
