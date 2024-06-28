package Calculator_Operations is
    function Add (A, B : Float) return Float;
    pragma Export (C, Add, "Add");

    function Subtract (A, B : Float) return Float;
    pragma Export (C, Subtract, "Subtract");

    function Multiply (A, B : Float) return Float;
    pragma Export (C, Multiply, "Multiply");

    function Divide (A, B : Float) return Float;
    pragma Export (C, Divide, "Divide");

    function Power (A, B : Float) return Float;
    pragma Export (C, Power, "Power");

    function Square_Root (A : Float) return Float;
    pragma Export (C, Square_Root, "Square_Root");

    function Simple_Rule_of_Three (A, B, C : Float) return Float;
    pragma Export (C, Simple_Rule_of_Three, "Simple_Rule_of_Three");

    function First_Degree_Equation (A, B : Float) return Float;
    pragma Export (C, First_Degree_Equation, "First_Degree_Equation");
end Calculator_Operations;
