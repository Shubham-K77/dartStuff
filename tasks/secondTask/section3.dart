void forLoop() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

void whileLoop() {
  int i = 0;
  int sum = 0;
  while (i <= 5) {
    sum += i;
    i++;
  }
  print(sum);
}

void whileLoop2() {
  int counter = 0;
  while (counter < 15) {
    if (counter % 2 != 0) {
      print(counter);
    }
    counter++;
  }
}

void main() {
  forLoop();
  print("\n");
  whileLoop();
  print("\n");
  whileLoop2();
  print("\n");
}
