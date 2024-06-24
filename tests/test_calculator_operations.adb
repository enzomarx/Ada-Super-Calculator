with Ada.Text_IO;         use Ada.Text_IO;
with Calculator_Operations;

procedure Test_Calculator_Operations is
    -- Variables to hold test results
    A, B, C, Result : Float;

begin
    -- Test Addition
    A := 5.0;
    B := 3.0;
    Result := Calculator_Operations.Add(A, B);
    Put_Line("Addition Test: " & Float'Image(Result)); -- Should output 8.0

    -- Test Subtraction
    Result := Calculator_Operations.Subtract(A, B);
    Put_Line("Subtraction Test: " & Float'Image(Result)); -- Should output 2.0

    -- Test Multiplication
    Result := Calculator_Operations.Multiply(A, B);
    Put_Line("Multiplication Test: " & Float'Image(Result)); -- Should output 15.0

    -- Test Division
    Result := Calculator_Operations.Divide(A, B);
    Put_Line("Division Test: " & Float'Image(Result)); -- Should output 1.66667

    -- Test Exponentiation
    Result := Calculator_Operations.Power(A, B);
    Put_Line("Exponentiation Test: " & Float'Image(Result)); -- Should output 125.0

    -- Test Square Root
    Result := Calculator_Operations.Square_Root(A);
    Put_Line("Square Root Test: " & Float'Image(Result)); -- Should output 2.23607

    -- Test Simple Rule of Three
    A := 2.0;
    B := 3.0;
    C := 4.0;
    Result := Calculator_Operations.Simple_Rule_of_Three(A, B, C);
    Put_Line("Simple Rule of Three Test: " & Float'Image(Result)); -- Should output 6.0

    -- Test First Degree Equation
    A := 2.0;
    B := -4.0;
    Result := Calculator_Operations.First_Degree_Equation(A, B);
    Put_Line("First Degree Equation Test: " & Float'Image(Result)); -- Should output 2.0
end Test_Calculator_Operations;
