// https://www.educative.io/courses/learn-dart-first-step-to-flutter/challenge-max-with-nested-functions

void main(List<String> args) {
  print(mainMax(1, 9, 5));
}

int mainMax(int a, int b, int c) {
  int max(a, b) => a > b ? a : b;

  return max(a, max(a, b));
}
