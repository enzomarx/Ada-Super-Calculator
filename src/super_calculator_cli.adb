with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;   use Ada.Float_Text_IO;
with Calculator_Operations;

procedure Super_Calculator_CLI is
    -- Var to hold user input
    A, B, C, Result : Float;
    Choice          : Integer;

    -- Func to print a float without <<scientific notation>>
    procedure Print_Float(Number : Float) is
    begin
        Ada.Float_Text_IO.Put(Item => Number, Fore => 0, Aft => 5, Exp => 0);
    end Print_Float;

    -- Helper procedure to get a float input from the user
    procedure Get_Float(Prompt : String; Output : out Float) is
    begin
        loop
            Put(Prompt);
            begin
                Get(Output);
                exit;
            exception
                when Constraint_Error =>
                    Put_Line("Invalid input. Please enter a valid number.");
                    Skip_Line;
            end;
        end loop;
    end Get_Float;

    -- Procedure to display the menu with ASCII art
    procedure Display_Menu is
    begin
        Put_Line("========================================");
        Put_Line("|            SUPER CALCULATOR          |");
        Put_Line("========================================");
        Put_Line("| 1. Addition                          |");
        Put_Line("| 2. Subtraction                       |");
        Put_Line("| 3. Multiplication                    |");
        Put_Line("| 4. Division                          |");
        Put_Line("| 5. Exponentiation                    |");
        Put_Line("| 6. Square Root                       |");
        Put_Line("| 7. Simple Rule of Three              |");
        Put_Line("| 8. First Degree Equation             |");
        Put_Line("| 9. Exit                              |");
        Put_Line("========================================");
        Put("Enter your choice: ");
    end Display_Menu;

    -- Procedure to display a result with decoration
    procedure Display_Result(Value : Float) is
    begin
        Put_Line("========================================");
        Put("Result: ");
        Print_Float(Value);
        New_Line;
        Put_Line("========================================");
    end Display_Result;

    -- Procedure to display a result with highlight and decoration
    procedure Highlighted_Display_Result(Value : Float) is
    begin
        Put_Line("========================================");
        Put("           Result: ");
        Print_Float(Value);
        New_Line;
        Put_Line("========================================");
    end Highlighted_Display_Result;

begin
    loop
        -- Display the menu
        Display_Menu;
        Get(Choice);

        -- Perform the selected operation
        case Choice is
            when 1 =>
                Get_Float("Enter the first number: ", A);
                Get_Float("Enter the second number: ", B);
                Result := Calculator_Operations.Add(A, B);
                Highlighted_Display_Result(Result);
            when 2 =>
                Get_Float("Enter the first number: ", A);
                Get_Float("Enter the second number: ", B);
                Result := Calculator_Operations.Subtract(A, B);
                Highlighted_Display_Result(Result);
            when 3 =>
                Get_Float("Enter the first number: ", A);
                Get_Float("Enter the second number: ", B);
                Result := Calculator_Operations.Multiply(A, B);
                Highlighted_Display_Result(Result);
            when 4 =>
                Get_Float("Enter the first number: ", A);
                Get_Float("Enter the second number: ", B);
                Result := Calculator_Operations.Divide(A, B);
                Highlighted_Display_Result(Result);
            when 5 =>
                Get_Float("Enter the base number: ", A);
                Get_Float("Enter the exponent: ", B);
                Result := Calculator_Operations.Power(A, B);
                Put_Line("========================================");
                Put("           Result: " & Float'Image(Result)); -- Scientific notation is fine here
                New_Line;
                Put_Line("========================================");
            when 6 =>
                Get_Float("Enter the number: ", A);
                Result := Calculator_Operations.Square_Root(A);
                Highlighted_Display_Result(Result);
            when 7 =>
                Get_Float("Enter the first value (A): ", A);
                Get_Float("Enter the second value (B): ", B);
                Get_Float("Enter the third value (C): ", C);
                Result := Calculator_Operations.Simple_Rule_of_Three(A, B, C);
                Highlighted_Display_Result(Result);
            when 8 =>
                Get_Float("Enter the coefficient A: ", A);
                Get_Float("Enter the coefficient B: ", B);
                Result := Calculator_Operations.First_Degree_Equation(A, B);
                Highlighted_Display_Result(Result);
            when 9 =>
                Put_Line("========================================");
                Put_Line("|       Exiting the calculator.       |");
                Put_Line("========================================");
                exit;
            when others =>
                Put_Line("Invalid choice. Please try again.");
        end case;
    end loop;
end Super_Calculator_CLI;
