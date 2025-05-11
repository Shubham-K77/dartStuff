void operations(var a, var b) {
  var operationMaps = {
    "+": () => a + b,
    "-": () => a - b,
    "*": () => a * b,
    "/": () => a / b,
    "%": () => a % b,
    "~/": () => a ~/ b,
  };
  operationMaps.forEach((op, func) {
    print("$a $op $b = ${func()}");
  });
}

void main() {
  //1. Variable Declaration:
  //Creating a list to iterate:
  var variables = [25, 21.5, "Alice", true];
  //For In Loop:
  for (var data in variables) {
    print(data.runtimeType);
  }
  print("\n");
  //2. String Interpolation:
  print('My Name is ${variables[2]} and I am ${variables[0]} years old.');
  //3. Var, Final And Const: [Compile-Time vs Run-Time]
  var city = "London";
  print(city);
  city = "Paris";
  print(city);
  final country = 'UK';
  // country = 'NEPAL';
  print(country);
  //Final is runtime stored in dynamic or heap and Const is compileTime and stored in stack
  const planet = "EARTH";
  // planet = "MARS";
  print(planet);
  print("\n");
  //4. Basic Arithmetic:
  var num1 = 15;
  var num2 = 4;
  operations(num1, num2);
  //5. Type Conversation:
  var strNumber = "50";
  print(int.parse(strNumber) + 10);
}
