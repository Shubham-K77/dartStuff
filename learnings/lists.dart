void main() {
  //Introducing Lists Data Type:
  var myList = [1, 2, 3];
  print('List => $myList');
  //Get A Value At Static Location:
  print(myList[2]);
  //Using Static Data Type:
  List names = ['John', 'Mina', 'Stacy'];
  print('Names => $names');
  //Declaring An Empty List:
  var emptyList = [];
  print('Empty => $emptyList');
  //Adding Value To Empty List:
  emptyList.add(41);
  print(emptyList);
  //Changing The Specific Value:
  emptyList[0] = 57;
  print(emptyList);
  //Adding Multiple Values To List:
  emptyList.addAll([1, 2, 3]);
  print(emptyList);
  //Adding Value To Specific Position (position, value):
  emptyList.insert(0, 52);
  print(emptyList);
  //Adding Multiple values to specific position (Position, Value):
  emptyList.insertAll(1, [99, 98, 97]);
  print(emptyList);
  //Implementing Mixed Lists:
  var mixedList = [1, 2, 3, "John", "Bob"];
  print(mixedList);
  //Remove A Specific Elements From The List:
  mixedList.remove(1);
  print(mixedList);
  //Remove Element At Specific Position:
  mixedList.removeAt(2);
  print(mixedList);
}
