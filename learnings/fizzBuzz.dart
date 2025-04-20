void main() {
  var counter = 1;
  //While Loop:
  while (counter <= 100) {
    (counter % 3 == 0 && counter % 5 == 0)
        ? print('$counter - FizzBuzz')
        : (counter % 3 == 0)
        ? print('$counter - Fizz')
        : (counter % 5 == 0)
        ? print('$counter - Buzz')
        : print('$counter');
    counter++;
  }
}
