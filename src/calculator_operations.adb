with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;

package body Calculator_Operations is
    function Add (A, B : Float) return Float is
    begin
        return A + B;
    end Add;

    function Subtract (A, B : Float) return Float is
    begin
        return A - B;
    end Subtract;

    function Multiply (A, B : Float) return Float is
    begin
        return A * B;
    end Multiply;

    function Divide (A, B : Float) return Float is
    begin
        if B = 0.0 then
            raise Constraint_Error with "Division by zero!";
        else
            return A / B;
        end if;
    end Divide;

    function Power (A, B : Float) return Float is
    begin
        return A ** B;
    end Power;

    function Square_Root (A : Float) return Float is
    begin
        return Sqrt (A);
    end Square_Root;

    function Simple_Rule_of_Three (A, B, C : Float) return Float is
    begin
        return (B * C) / A;
    end Simple_Rule_of_Three;

    function First_Degree_Equation (A, B : Float) return Float is
    begin
        if A = 0.0 then
            raise Constraint_Error with "Coefficient A cannot be zero!";
        else
            return -B / A;
        end if;
    end First_Degree_Equation;
end Calculator_Operations;
