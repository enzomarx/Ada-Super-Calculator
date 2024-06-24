with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;   use Ada.Float_Text_IO;
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;

procedure Super_Calculator is
    -- Function to perform addition
    function Add (A, B : Float) return Float is
    begin
        return A + B;
    end Add;

    -- Function to perform subtraction
    function Subtract (A, B : Float) return Float is
    begin
        return A - B;
    end Subtract;

    -- Function to perform multiplication
    function Multiply (A, B : Float) return Float is
    begin
        return A * B;
    end Multiply;

    -- Function to perform division
    function Divide (A, B : Float) return Float is
    begin
        if B = 0.0 then
            raise Constraint_Error with "Division by zero!";
        else
            return A / B;
        end if;
    end Divide;

    -- Function to perform exponentiation
    function Power (A, B : Float) return Float is
    begin
        return A ** B;
    end Power;

    -- Function to perform square root
    function Square_Root (A : Float) return Float is
    begin
        return Sqrt (A);
    end Square_Root;

    -- Function to perform simple rule of three
    function Simple_Rule_of_Three (A, B, C : Float) return Float is
    begin
        return (B * C) / A;
    end Simple_Rule_of_Three;

    -- Function to solve first degree equation ax + b = 0
    function First_Degree_Equation (A, B : Float) return Float is
    begin
        if A = 0.0 then
            raise Constraint_Error with "Coefficient A cannot be zero!";
        else
            return -B / A;
        end if;
    end First_Degree_Equation;

    -- Variables to hold user input
    A, B, C, Result : Float;
    Choice          : Integer;

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
                Result := Add(A, B);
                Put_Line("Result: " & Float'Image(Result));
            when 2 =>
                Put("Enter the first number: ");
                Get(A);
                Put("Enter the second number: ");
                Get(B);
                Result := Subtract(A, B);
                Put_Line("Result: " & Float'Image(Result));
            when 3 =>
                Put("Enter the first number: ");
                Get(A);
                Put("Enter the second number: ");
                Get(B);
                Result := Multiply(A, B);
                Put_Line("Result: " & Float'Image(Result));
            when 4 =>
                Put("Enter the first number: ");
                Get(A);
                Put("Enter the second number: ");
                Get(B);
                Result := Divide(A, B);
                Put_Line("Result: " & Float'Image(Result));
            when 5 =>
                Put("Enter the base number: ");
                Get(A);
                Put("Enter the exponent: ");
                Get(B);
                Result := Power(A, B);
                Put_Line("Result: " & Float'Image(Result));
            when 6 =>
                Put("Enter the number: ");
                Get(A);
                Result := Square_Root(A);
                Put_Line("Result: " & Float'Image(Result));
            when 7 =>
                Put("Enter the first value (A): ");
                Get(A);
                Put("Enter the second value (B): ");
                Get(B);
                Put("Enter the third value (C): ");
                Get(C);
                Result := Simple_Rule_of_Three(A, B, C);
                Put_Line("Result: " & Float'Image(Result));
            when 8 =>
                Put("Enter the coefficient A: ");
                Get(A);
                Put("Enter the coefficient B: ");
                Get(B);
                Result := First_Degree_Equation(A, B);
                Put_Line("Result: x = " & Float'Image(Result));
            when 9 =>
                Put_Line("Exiting the calculator.");
                exit;
            when others =>
                Put_Line("Invalid choice. Please try again.");
        end case;
    end loop;
end Super_Calculator;
