#ifndef CALCULATOR_OPERATIONS_H
#define CALCULATOR_OPERATIONS_H

#ifdef __cplusplus
extern "C" {
#endif

// Declaração das funções exportadas de Ada
float Add(float A, float B);
float Subtract(float A, float B);
float Multiply(float A, float B);
float Divide(float A, float B);
float Power(float A, float B);
float Square_Root(float A);
float Simple_Rule_of_Three(float A, float B, float C);
float First_Degree_Equation(float A, float B);

#ifdef __cplusplus
}
#endif

#endif // CALCULATOR_OPERATIONS_H
