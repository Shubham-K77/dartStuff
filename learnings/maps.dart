void main() {
  //Introducing Maps! Key: Value =>
  var pizzaToppings = {"John": "Pepperoni", "Mary": "Cheese"};
  print(pizzaToppings);
  //Show Keys:
  print(pizzaToppings.keys);
  //Show Values:
  print(pizzaToppings.values);
  //Add A New Pair:
  pizzaToppings["Tim"] = "Sasuage";
  print(pizzaToppings);
  //Add Multiple Values:
  pizzaToppings.addAll({"Tina": "Bacon", "Steve": "Pineapple"});
  print(pizzaToppings);
  //Remove A Key-Value Pair:
  pizzaToppings.remove("Steve");
  print(pizzaToppings);
  //Display The Length
  print(pizzaToppings.length);
  //Remove Everything
  pizzaToppings.clear();
  print(pizzaToppings);
}
