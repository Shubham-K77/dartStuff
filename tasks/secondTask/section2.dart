//Taking User Input:
import "dart:io";

//Integer Variable Score:
void checkScore(score) {
  (score >= 90)
      ? print("Grade: A")
      : (score >= 80 && score < 90)
      ? print("Grade: B")
      : (score >= 70 && score < 80)
      ? print("Grade: C")
      : print("Grade: F");
}

//Leap Year Logic:
void checkLeapYear(year) {
  (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0))
      ? print("$year is a leap year!")
      : print("$year is not a leap year!");
}

//Checking Week Logic:
void checkWeek(day) {
  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid Day");
  }
}

//Main Function:
void main() {
  print("Enter The Score: ");
  double score = double.parse(stdin.readLineSync() ?? "0.0");
  checkScore(score);
  print("\n");
  print("Enter The Year: ");
  int year = int.parse(stdin.readLineSync() ?? "0");
  checkLeapYear(year);
  print("\n");
  print("Enter The Number: ");
  int num = int.parse(stdin.readLineSync() ?? "0");
  checkWeek(num);
  print("\n");
}
