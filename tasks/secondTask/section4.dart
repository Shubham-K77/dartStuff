void main() {
  //Task 12 Solution:
  var fruits = ["Apple", "Banana", "Cherry"];
  print(fruits.length);
  print(fruits[1]);
  print("\n");
  //Task 13 Solution:
  for (var fruit in fruits) {
    print(fruit);
  }
  fruits.add("Durian");
  print(fruits);
  fruits = fruits.where((fruit) => fruit != "Apple").toList();
  print(fruits);
  print("\n");
  //Task 14 Solution:
  var countriesAndCapitals = {
    "Usa": "Washington D.C.",
    "France": "Paris",
    "Japan": "Tokyo",
  };
  print(countriesAndCapitals['France']);
  countriesAndCapitals['Portugal'] = "Lisbon";
  print(countriesAndCapitals);
  print(countriesAndCapitals.keys);
  print("\n");
}
