// https://levelup.gitconnected.com/arity-closure-currying-partial-application-more-in-dart-functional-programming-part-2-4534a8b7f374

import 'dart:convert';

typedef IntAddition = int Function(int);
typedef StringCallBack = String Function(String);
void main(List<String> args) {
  /// 1. Parameter vs Arguement
  final _sum = sumTwoNumbers(10, 20); // 10 & 20 are arguements
  print('Sum of 10 & 20 is $_sum');

  /// 2. Arity
  // Arity is the number of arguments a function takes.

  // The Arity of [sumTwoNumbers] is 2

  /// 3. Clousure

  final _outerFuncReult = _outerFunction();
  _outerFuncReult();

  final _aadition1 = add(10);
  final _summ = _aadition1.call(15);
  print(_summ);

  /// 4. Point-free style

  // Point-free style defines a function without needing to pass in the arguments explicitly.

  const _numsList = [10, 20, 30, 40, 50];

  // Not point free
  final nonPointFreeList = _numsList.map(incrementByOne).toList();
  print(nonPointFreeList);

  // Point Free
  final pointFreeList = _numsList.map(incrementByOne).toList();
  print(pointFreeList);

  /// 5. Curving

  // Breaking down a multi-argument function into a series of single-argument functions is currying.
  // A curried function takes a single argument at a time and returns a function that takes a single argument
  // and so on until all the arguments are passed.

  // Non curried
  print(greetByMultipleArgs('Hello', 'John'));

  // Curried
  print(greetCurried('Hello')('John'));

  bool x = myFunction('helooooooo')('hello');

  const _message = 'Appal:welcome';

  final _encoded = base64Encode(utf8.encode(_message));
  print(_encoded);
  final _decoed = utf8.decode(base64Decode(_encoded));
  print(_decoed);
}

/// [sumTwoNumbers] accepts two parameters of int [v1] & int [v2] and returns sum of them.
int sumTwoNumbers(final int v1, final int v2) => v1 + v2;

Function _outerFunction() {
  const _myMessage = 'This is Outer Function Variable';

  void _innerFunction() => print('In Inner Function : $_myMessage');

  return _innerFunction;
}

IntAddition add(int a) => (int b) => a + b;

int incrementByOne(int num) => num + 1;

String greetByMultipleArgs(String s1, String s2) => '$s1, $s2';

StringCallBack greetCurried(String s1) => (String s2) => '$s1, $s2';

typedef BoolCallback = bool Function(String s);

BoolCallback myFunction(String s1) => (s) => s.length > 10 && s1.length > 10;
