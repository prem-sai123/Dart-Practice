
import 'MyAppLogger/my_app_logger.dart';
import 'typedefs/example.dart';

void main(List<String> args) {
  //1. dart functions are 1st cls citizens : This means that you can treat a function as a value of other types.

  /// Assign a function to a variable:

  final _addFunction = _additionOfTwoNumbers;
  MyAppLogger.logInfo('Assign a function to a variable : ');
  print(_addFunction(10, 10));
  print(_addFunction(10, 20));
  print(_addFunction(10, 30));

  /// Pass a function to another function as an argument:
  MyAppLogger.logInfo('Pass a function to another function as an argument : ');
  MyAppLogger.logSuccess('Even Numbers btwn 1 to 10 : ');
  show(_isEvenNumber);
  MyAppLogger.logSuccess('Odd Numbers btwn 1 to 10 : ');
  show(_isOddNumber);

  /// Returning a function from a function
  MyAppLogger.logInfo('Returning a function from a function : ');

  Function calci(String char) {
    if(char == '+') return addTwoNumbers;
    return _subtractionOfTwoNumbers;
  }
  final calc1 = calci('+');
  print(calc1(10,20));

  final calc2 = calci('-');
  print(calc2(10,20));

  ///2. Anonymous Functions 
  // If you remove the return type and name from a named function.

  /// ''''dart
  /// Example:
  /// Nomal Function :
  /// 
  /// int add(int x,int y) => x + y;
  /// 
  /// Anonymous Function :
  /// (int x,int y) => x + y;
  /// 
  /// '''
  
  final addResult = _additionOfTwoNumbers(10, 20);
  print(addResult);
  final addRes1 = (int x,int y) => x + y;
  print(addRes1.call(10,20));
}

int _additionOfTwoNumbers(int a, int b) => a + b;

int _subtractionOfTwoNumbers(int a, int b) => a - b;

bool _isEvenNumber(int num) => num % 2 == 0;

bool _isOddNumber(int num) => !_isEvenNumber(num);

void show(bool Function(int num) callback) {
  for (int i = 0; i < 10; i++) if (callback(i)) print(i);
}
