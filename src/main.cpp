#include <iostream>
#include "calculator_operations.h"

using namespace std;

int main() {
    float A, B, C, Result;
    int Choice;

    cout << "Super Calculator" << endl;
    cout << "1. Addition" << endl;
    cout << "2. Subtraction" << endl;
    cout << "3. Multiplication" << endl;
    cout << "4. Division" << endl;
    cout << "5. Exponentiation" << endl;
    cout << "6. Square Root" << endl;
    cout << "7. Simple Rule of Three" << endl;
    cout << "8. First Degree Equation" << endl;
    cout << "9. Exit" << endl;

    do {
        cout << "Enter your choice: ";
        cin >> Choice;

        switch (Choice) {
            case 1:
                cout << "Enter the first number: ";
                cin >> A;
                cout << "Enter the second number: ";
                cin >> B;
                Result = Add(A, B);
                cout << "Result: " << Result << endl;
                break;
            case 2:
                cout << "Enter the first number: ";
                cin >> A;
                cout << "Enter the second number: ";
                cin >> B;
                Result = Subtract(A, B);
                cout << "Result: " << Result << endl;
                break;
            case 3:
                cout << "Enter the first number: ";
                cin >> A;
                cout << "Enter the second number: ";
                cin >> B;
                Result = Multiply(A, B);
                cout << "Result: " << Result << endl;
                break;
            case 4:
                cout << "Enter the first number: ";
                cin >> A;
                cout << "Enter the second number: ";
                cin >> B;
                Result = Divide(A, B);
                cout << "Result: " << Result << endl;
                break;
            case 5:
                cout << "Enter the base number: ";
                cin >> A;
                cout << "Enter the exponent: ";
                cin >> B;
                Result = Power(A, B);
                cout << "Result: " << Result << endl;
                break;
            case 6:
                cout << "Enter the number: ";
                cin >> A;
                Result = Square_Root(A);
                cout << "Result: " << Result << endl;
                break;
            case 7:
                cout << "Enter the first value (A): ";
                cin >> A;
                cout << "Enter the second value (B): ";
                cin >> B;
                cout << "Enter the third value (C): ";
                cin >> C;
                Result = Simple_Rule_of_Three(A, B, C);
                cout << "Result: " << Result << endl;
                break;
            case 8:
                cout << "Enter the coefficient A: ";
                cin >> A;
                cout << "Enter the coefficient B: ";
                cin >> B;
                Result = First_Degree_Equation(A, B);
                cout << "Result: x = " << Result << endl;
                break;
            case 9:
                cout << "Exiting the calculator." << endl;
                break;
            default:
                cout << "Invalid choice. Please try again." << endl;
                break;
        }
    } while (Choice != 9);

    return 0;
}
