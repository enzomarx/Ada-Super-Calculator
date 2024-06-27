with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;   use Ada.Float_Text_IO;
with Calculator_Operations;

procedure Super_Calculator is
    -- Variables to hold user input
    A, B, C, Result : Float;
    Choice          : Integer;

    -- Function to print a float without scientific notation
    procedure Print_Float(Number : Float) is
    begin
        Ada.Float_Text_IO.Put(Item => Number, Fore => 0, Aft => 5, Exp => 0);
    end Print_Float;

begin
    loop
        -- Display the menu
        Put_Line("Super Calculator");
        Put_Line("1. Addition");
        Put_Line("2. Subtraction");
        Put_Line("3. Multiplication");
        Put_Line("4. Division");
        Put_Line("5. Exponentiation");
        Put_Line("6. Square Root");
        Put_Line("7. Simple Rule of Three");
        Put_Line("8. First Degree Equation");
        Put_Line("9. Exit");
        Put("Enter your choice: ");
        Get(Choice);

        -- Perform the selected operation
        case Choice is
            when 1 =>
                Put("Enter the first number: ");
                Get(A);
                Put("Enter the second number: ");
                Get(B);
                Result := Calculator_Operations.Add(A, B);
                Put("Result: ");
                Print_Float(Result);
                New_Line;
            when 2 =>
                Put("Enter the first number: ");
                Get(A);
                Put("Enter the second number: ");
                Get(B);
                Result := Calculator_Operations.Subtract(A, B);
                Put("Result: ");
                Print_Float(Result);
                New_Line;
            when 3 =>
                Put("Enter the first number: ");
                Get(A);
                Put("Enter the second number: ");
                Get(B);
                Result := Calculator_Operations.Multiply(A, B);
                Put("Result: ");
                Print_Float(Result);
                New_Line;
            when 4 =>
                Put("Enter the first number: ");
                Get(A);
                Put("Enter the second number: ");
                Get(B);
                Result := Calculator_Operations.Divide(A, B);
                Put("Result: ");
                Print_Float(Result);
                New_Line;
            when 5 =>
                Put("Enter the base number: ");
                Get(A);
                Put("Enter the exponent: ");
                Get(B);
                Result := Calculator_Operations.Power(A, B);
                Put_Line("Result: " & Float'Image(Result)); -- Scientific notation is fine here
            when 6 =>
                Put("Enter the number: ");
                Get(A);
                Result := Calculator_Operations.Square_Root(A);
                Put("Result: ");
                Print_Float(Result);
                New_Line;
            when 7 =>
                Put("Enter the first value (A): ");
                Get(A);
                Put("Enter the second value (B): ");
                Get(B);
                Put("Enter the third value (C): ");
                Get(C);
                Result := Calculator_Operations.Simple_Rule_of_Three(A, B, C);
                Put("Result: ");
                Print_Float(Result);
                New_Line;
            when 8 =>
                Put("Enter the coefficient A: ");
                Get(A);
                Put("Enter the coefficient B: ");
                Get(B);
                Result := Calculator_Operations.First_Degree_Equation(A, B);
                Put("Result: x = ");
                Print_Float(Result);
                New_Line;
            when 9 =>
                Put_Line("Exiting the calculator.");
                exit;
            when others =>
                Put_Line("Invalid choice. Please try again.");
        end case;
    end loop;
end Super_Calculator;
    