// https://www.educative.io/courses/learn-dart-first-step-to-flutter/challenge-write-your-first-higher-order-function

// Arithmetic Functions

num add(int a, int b) => a + b;

num subtract(int a, int b) => a - b;

num multiply(int a, int b) => a * b;

num divide(int a, int b) => a / b;

int arithmeticPrinter(Function fun,int x,int y) => fun(x,y);

void main(List<String> args) {
  print(arithmeticPrinter(add, 4, 9));
}