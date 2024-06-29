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
                    Put_Line("\033[31mInvalid input. Please enter a valid number.\033[0m");
                    Skip_Line;
            end;
        end loop;
    end Get_Float;

    -- Procedure to display the menu with ASCII art and colors
    procedure Display_Menu is
    begin
        Put_Line("\033[34m========================================\033[0m");
        Put_Line("\033[1;36m|            SUPER CALCULATOR          |\033[0m");
        Put_Line("\033[34m========================================\033[0m");
        Put_Line("\033[32m| 1. Addition                          |\033[0m");
        Put_Line("\033[32m| 2. Subtraction                       |\033[0m");
        Put_Line("\033[32m| 3. Multiplication                    |\033[0m");
        Put_Line("\033[32m| 4. Division                          |\033[0m");
        Put_Line("\033[32m| 5. Exponentiation                    |\033[0m");
        Put_Line("\033[32m| 6. Square Root                       |\033[0m");
        Put_Line("\033[32m| 7. Simple Rule of Three              |\033[0m");
        Put_Line("\033[32m| 8. First Degree Equation             |\033[0m");
        Put_Line("\033[32m| 9. Exit                              |\033[0m");
        Put_Line("\033[34m========================================\033[0m");
        Put("\033[33mEnter your choice: \033[0m");
    end Display_Menu;

    -- Procedure to display a result with decoration and color
    procedure Display_Result(Prefix : String; Value : Float) is
    begin
        Put_Line("\033[34m========================================\033[0m");
        Put("\033[1;35m" & Prefix);
        Print_Float(Value);
        New_Line;
        Put_Line("\033[34m========================================\033[0m");
    end Display_Result;

begin
    loop
        -- Display the menu
        Display_Menu;
        Get(Choice);

        -- Perform the selected operation
        case Choice is
            when 1 =>
                Get_Float("\033[33mEnter the first number: \033[0m", A);
                Get_Float("\033[33mEnter the second number: \033[0m", B);
                Result := Calculator_Operations.Add(A, B);
                Display_Result("Result: ", Result);
            when 2 =>
                Get_Float("\033[33mEnter the first number: \033[0m", A);
                Get_Float("\033[33mEnter the second number: \033[0m", B);
                Result := Calculator_Operations.Subtract(A, B);
                Display_Result("Result: ", Result);
            when 3 =>
                Get_Float("\033[33mEnter the first number: \033[0m", A);
                Get_Float("\033[33mEnter the second number: \033[0m", B);
                Result := Calculator_Operations.Multiply(A, B);
                Display_Result("Result: ", Result);
            when 4 =>
                Get_Float("\033[33mEnter the first number: \033[0m", A);
                Get_Float("\033[33mEnter the second number: \033[0m", B);
                Result := Calculator_Operations.Divide(A, B);
                Display_Result("Result: ", Result);
            when 5 =>
                Get_Float("\033[33mEnter the base number: \033[0m", A);
                Get_Float("\033[33mEnter the exponent: \033[0m", B);
                Result := Calculator_Operations.Power(A, B);
                Put_Line("\033[34m========================================\033[0m");
                Put_Line("\033[1;35mResult: " & Float'Image(Result) & "\033[0m"); -- Scientific notation is fine here
                Put_Line("\033[34m========================================\033[0m");
            when 6 =>
                Get_Float("\033[33mEnter the number: \033[0m", A);
                Result := Calculator_Operations.Square_Root(A);
                Display_Result("Result: ", Result);
            when 7 =>
                Get_Float("\033[33mEnter the first value (A): \033[0m", A);
                Get_Float("\033[33mEnter the second value (B): \033[0m", B);
                Get_Float("\033[33mEnter the third value (C): \033[0m", C);
                Result := Calculator_Operations.Simple_Rule_of_Three(A, B, C);
                Display_Result("Result: ", Result);
            when 8 =>
                Get_Float("\033[33mEnter the coefficient A: \033[0m", A);
                Get_Float("\033[33mEnter the coefficient B: \033[0m", B);
                Result := Calculator_Operations.First_Degree_Equation(A, B);
                Display_Result("Result: x = ", Result);
            when 9 =>
                Put_Line("\033[34m========================================\033[0m");
                Put_Line("\033[1;36m|       Exiting the calculator.       |\033[0m");
                Put_Line("\033[34m========================================\033[0m");
                exit;
            when others =>
                Put_Line("\033[31mInvalid choice. Please try again.\033[0m");
        end case;
    end loop;
end Super_Calculator_CLI;
