**Section 1: Basics (Variables, Types, Operators)**

1.  **Variable Declaration:** Declare four variables:

    - An integer variable `age` initialized to `25`.
    - A double variable `temperature` initialized to `21.5`.
    - A string variable `name` initialized to `"Alice"`.
    - A boolean variable `isStudent` initialized to `true`.
      Print the value and type of each variable (e.g., using `runtimeType`).

2.  **String Interpolation:** Using the `name` and `age` variables from question 1, print the sentence: "My name is Alice and I am 25 years old." using string interpolation.

3.  **`var`, `final`, and `const`:**

    - Declare a variable `city` using `var` and initialize it to `"London"`. Try reassigning it to `"Paris"` and print the final value.
    - Declare a variable `country` using `final` and initialize it to `"UK"`. Try reassigning it. What happens?
    - Declare a variable `planet` using `const` and initialize it to `"Earth"`. What is the key difference between `final` and `const`?

4.  **Basic Arithmetic:** Declare two integer variables, `num1` and `num2`, with values `15` and `4`. Print the results of their:

    - Addition (+)
    - Subtraction (-)
    - Multiplication (\*)
    - Division (/) (Note the result type)
    - Integer Division (~/)
    - Modulo (%)

5.  **Type Conversion:** Declare a String variable `strNumber` with the value `"50"`. Convert this string to an integer, add `10` to it, and print the final integer result.

**Section 2: Control Flow (if/else, switch)**

6.  **`if/else if/else`:** Write code that checks an integer variable `score`.

    - If `score` is 90 or above, print "Grade: A".
    - If `score` is 80 or above (but less than 90), print "Grade: B".
    - If `score` is 70 or above (but less than 80), print "Grade: C".
    - Otherwise, print "Grade: F".
      Test it with different values for `score`.

7.  **Logical Operators:** Write an `if` statement that checks if an integer `year` is a leap year. A leap year is divisible by 4, except for years divisible by 100 unless they are also divisible by 400. (Hint: use `&&` (AND), `||` (OR), and `%` (modulo)). Print whether the year is a leap year or not. Test with `2000`, `1900`, `2024`, `2023`.

8.  **`switch` Statement:** Write a `switch` statement that takes an integer variable `dayOfWeek` (where 1 is Monday, 7 is Sunday). Print the name of the day. Include a `default` case that prints "Invalid day". Test with `3`, `7`, and `9`.

**Section 3: Loops (for, while)**

9.  **`for` Loop:** Write a `for` loop that prints the numbers from 1 to 10, each on a new line.

10. **`while` Loop:** Write a `while` loop that calculates the sum of numbers from 1 to 5. Print the final sum _after_ the loop finishes.

11. **Looping with a Condition:** Write a `while` loop that starts with a counter at 0 and increments it. The loop should continue as long as the counter is less than 15. Inside the loop, print the counter _only if_ it's an odd number.

**Section 4: Collections (List, Map)**

12. **`List` Basics:**

    - Create a `List` of strings containing three different fruit names.
    - Print the number of elements in the list (its length).
    - Print the second element in the list (remember index starts at 0).

13. **`List` Iteration & Modification:**

    - Using the fruit list from question 12, iterate through it using a `for-in` loop and print each fruit name.
    - Add a new fruit to the end of the list.
    - Remove the first fruit from the list.
    - Print the final list.

14. **`Map` Basics:**
    - Create a `Map` where keys are `String` (country names) and values are `String` (capital cities). Add at least three country-capital pairs (e.g., "USA": "Washington D.C.", "France": "Paris", "Japan": "Tokyo").
    - Print the capital of "France".
    - Add a new country-capital pair to the map.
    - Print all the keys (countries) in the map.

**Section 5: Functions**

15. **Simple Function:** Write a function named `calculateArea` that takes two `double` arguments, `width` and `height`, and returns their product (the area). Call this function with sample values (e.g., 5.0, 8.0) and print the returned result.

16. **Function with No Return Value (`void`):** Write a function named `printGreeting` that takes one `String` argument `name` and prints a greeting message like "Hello, [name]!". Call this function with your name.

17. **Function with Optional Parameter:** Modify the `printGreeting` function (or create a new one) so that the `name` parameter is optional and defaults to "Guest" if no name is provided. Test it by calling it both with and without an argument. (Hint: Use `[]` for optional positional or `{}` for optional named parameters with default values).

**Section 6: Introduction to OOP (Classes, Objects)**

18. **Class Definition:** Define a simple class named `Dog`. Give it two properties (instance variables):

    - `name` (String)
    - `breed` (String)

19. **Object Instantiation & Constructor:**

    - Add a _constructor_ to the `Dog` class that takes `name` and `breed` as arguments and initializes the corresponding properties.
    - Create an _instance_ (object) of the `Dog` class, providing a name (e.g., "Buddy") and breed (e.g., "Golden Retriever") during creation.
    - Print the `name` and `breed` of the created dog object.

20. **Class Method:** Add a method named `bark` to the `Dog` class. This method should print a string like "[Dog's Name] says Woof!". Call the `bark` method on the dog object you created in question 19.
