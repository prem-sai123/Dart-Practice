import 'dart:math';

void main(List<String> args) {
  // If you remove the return type and the function name, the function is called anonymous function.
  const programmingLanguages = ['Java','python','c','c++','dart','kotlin'];
  programmingLanguages.forEach(print);

  final cube = (int number) => number * number * number;
  print(cube.call(5));
  max(10, 20);
}