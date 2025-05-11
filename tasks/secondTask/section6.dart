//DART OOPS:
class dog {
  var name;
  var breed;
  dog(name, breed) {
    this.name = name;
    this.breed = breed;
  }
  void bark() {
    print("${name} says woof!");
  }
}

void main() {
  var newDog = dog("Buddy", "Golden Retriever");
  print("Name: ${newDog.name} Breed: ${newDog.breed}");
  newDog.bark();
}
