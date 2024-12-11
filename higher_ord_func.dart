/// Higher-Order Functions (HOF)s
/// 
/// A function that takes a function as an argument or returns a function is a higher-order function.
/// 
/// Ex: where, map, or reduce.

void main(List<String> args) {
  const _numberList = [0,1,2,3,4,5,6,7,8,9,10];

  // Declarative approach: .where in Dart List
  final _evenNumbers = _numberList.where((num) => num.isEven).toList();
  print('Even Numbers : $_evenNumbers');
  final _oddNumbers = _numberList.where((num) => num.isOdd).toList();
  print('Odd Numbers : $_oddNumbers');

  // Declarative approach: Functional API
}

bool isEvenNumber(int number) => number % 2 == 0;
bool isOddNumber(int number) => !isEvenNumber(number);