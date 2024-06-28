// src/calculator_interface.cpp
#include <iostream>
#include <stdexcept>
extern "C" {
    #include "calculator_operations.h"
}

void print_menu() {
    std::cout << "Super Calculator" << std::endl;
    std::cout << "1. Addition" << std::endl;
    std::cout << "2. Subtraction" << std::endl;
    std::cout << "3. Multiplication" << std::endl;
    std::cout << "4. Division" << std::endl;
    std::cout << "5. Exponentiation" << std::endl;
    std::cout << "6. Square Root" << std::endl;
    std::cout << "7. Simple Rule of Three" << std::endl;
    std::cout << "8. First Degree Equation" << std::endl;
    std::cout << "9. Exit" << std::endl;
}

void perform_calculation(int choice) {
    float A, B, C, Result;

    try {
        switch (choice) {
            case 1:
                std::cout << "Enter the first number: ";
                std::cin >> A;
                std::cout << "Enter the second number: ";
                std::cin >> B;
                Result = Add(A, B);
                break;
            case 2:
                std::cout << "Enter the first number: ";
                std::cin >> A;
                std::cout << "Enter the second number: ";
                std::cin >> B;
                Result = Subtract(A, B);
                break;
            case 3:
                std::cout << "Enter the first number: ";
                std::cin >> A;
                std::cout << "Enter the second number: ";
                std::cin >> B;
                Result = Multiply(A, B);
                break;
            case 4:
                std::cout << "Enter the first number: ";
                std::cin >> A;
                std::cout << "Enter the second number: ";
                std::cin >> B;
                Result = Divide(A, B);
                break;
            case 5:
                std::cout << "Enter the base number: ";
                std::cin >> A;
                std::cout << "Enter the exponent: ";
                std::cin >> B;
                Result = Power(A, B);
                break;
            case 6:
                std::cout << "Enter the number: ";
                std::cin >> A;
                Result = Square_Root(A);
                break;
            case 7:
                std::cout << "Enter the first value (A): ";
                std::cin >> A;
                std::cout << "Enter the second value (B): ";
                std::cin >> B;
                std::cout << "Enter the third value (C): ";
                std::cin >> C;
                Result = Simple_Rule_of_Three(A, B, C);
                break;
            case 8:
                std::cout << "Enter the coefficient A: ";
                std::cin >> A;
                std::cout << "Enter the coefficient B: ";
                std::cin >> B;
                Result = First_Degree_Equation(A, B);
                break;
            case 9:
                std::cout << "Exiting the calculator." << std::endl;
                return;
            default:
                std::cout << "Invalid choice. Please try again." << std::endl;
                return;
        }

        std::cout << "Result: " << Result << std::endl;
    } catch (const std::runtime_error &e) {
        std::cerr << e.what() << std::endl;
    }
}

int main() {
    int choice;

    while (true) {
        print_menu();
        std::cout << "Enter your choice: ";
        std::cin >> choice;

        if (choice == 9) {
            break;
        }

        perform_calculation(choice);
    }

    return 0;
}
