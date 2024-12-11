// [https://dart-tutorial.com/conditions-and-loops/questions-for-practice-2/]
// Write a dart program to check if the number is odd or even.


void main(List<String> args) {
  // [number]
  const number = 10;
  print(number.isEven ? 'Even Number' : 'Odd Number');
  print(number % 2 == 0 ? 'Even Number' : 'Odd Number');
}