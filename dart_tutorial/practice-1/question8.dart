// Write a program to swap two numbers.

void main(List<String> args) {
  int val1 = 10;
  int val2 = 20;
  print('Before Swapping : Val1 : $val1 & Val2 : $val2');
  val1 = val1 + val2; // val1 = 30
  val2 = val1 - val2; // val2 = 30 - 20 => 10
  val1 = val1 - val2; // val1 = 30 - 10 => 20;
  print('After Swapping : Val1 : $val1 & Val2 : $val2');
}