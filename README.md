# Ada Super Calculator 1

Ada Super Calculator is a powerful and versatile calculator written in Ada, offering various common mathematical operations, including addition, subtraction, multiplication, division, exponentiation, square root, simple rule of three, and solving first-degree equations. This application is designed for use in a console environment.

## History of the Ada Language

The Ada programming language was developed in the 1970s and 1980s by the United States Department of Defense, with the aim of creating a robust and efficient language for embedded and real-time systems. Named after Ada Lovelace, considered the first programmer in history, the Ada language is known for its strong support for software engineering, safety, and maintainability, and is widely used in critical applications such as aviation, rail transport, and air traffic control.

## Features

1. **Addition**
2. **Subtraction**
3. **Multiplication**
4. **Division**
5. **Exponentiation**
6. **Square Root**
7. **Simple Rule of Three**
8. **First-Degree Equation**
9. **Exit**

## Prerequisites

To compile and run Ada Super Calculator, you will need:

- An Ada compiler (e.g., GNAT)
- A command-line terminal

## Important Note

**Ensure there are no special characters in the directory path where the project is saved.** Special characters can cause issues during compilation.

## How to Compile

Open a command-line terminal and navigate to the directory where the file `super_calculator.adb` is located. Execute the following command to compile the program:

```sh
gnatmake src/super_calculator.adb
```

This will generate an executable named `super_calculator`.

## How to Run

After compiling, you can run the program with the following command in the terminal:

```sh
./super_calculator
```

## Usage

The program displays a menu with various mathematical operation options. The user should enter the number corresponding to the desired operation and follow the instructions to input the necessary values.

### Example Execution

1. The user runs the program.
2. The program displays the menu:
   ```
   Super Calculator
   1. Addition
   2. Subtraction
   3. Multiplication
   4. Division
   5. Exponentiation
   6. Square Root
   7. Simple Rule of Three
   8. First-Degree Equation
   9. Exit
   Enter your choice:
   ```
3. The user selects the desired operation, for example, 1 for addition.
4. The program prompts for the numbers to be added:
   ```
   Enter the first number: 5
   Enter the second number: 3
   Result: 8.0
   ```
5. The menu is displayed again until the user chooses the option to exit (9).

## Errors and Exceptions

- **Division by Zero:** The program detects and informs the user if they attempt to divide by zero.
- **Zero Coefficient in First-Degree Equations:** The program detects and informs the user if the coefficient \(a\) in the first-degree equation is zero.

## Contribution

Feel free to contribute with improvements, bug fixes, or new features. To contribute:

1. Fork the repository.
2. Create a branch for your feature (`git checkout -b feature/new-feature`).
3. Commit your changes (`git commit -am 'Add new feature'`).
4. Push to the branch (`git push origin feature/new-feature`).
5. Create a Pull Request.

## License

This project is distributed under the MIT License. See the `LICENSE` file for more details.

---

We hope you find Ada Super Calculator useful and easy to use. If you have any feedback or encounter issues, please open an issue in the repository.
