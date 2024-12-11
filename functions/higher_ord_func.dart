void main(List<String> args) {
  const numbers = [10, 20, 30, 40, 50];
  final incByOneRes1 = forAll(incrementByOne, numbers);
  print(incByOneRes1);

  final incByOneRes2 = numbers.forEach2(incrementByOne);
  print(incByOneRes2);

  const inpFactorialnumbers = [1, 2, 3, 4, 5];
  final facNumbers1 = forAll(factorial, inpFactorialnumbers);
  print(facNumbers1);

  final facNumbers2 = inpFactorialnumbers.forEach2(factorial);
  print(facNumbers2);

  final _evenNumbers = inpFactorialnumbers.filter(isEvenNumber);
  print('Even Numbers in $inpFactorialnumbers : $_evenNumbers');

  final _oddNumbers = inpFactorialnumbers.filter(isOddNumber);
  print('Odd Numbers in $inpFactorialnumbers : $_oddNumbers');

  // Anonymous Functions (no return type, no func name)
  final cube = (x) => print(x * x * x);

  const cubeInpList = [1, 2, 3];
  cubeInpList.forEach(cube);

  print(mimnimumOfList([5, 1, 3, 0, 5, 6]));
  print(maximumOfList([5, 1, 3, 34, 66, 0, 5, 6]));
}

int incrementByOne(int number) => number + 1;

bool isEvenNumber(int number) => number % 2 == 0;
bool isOddNumber(int number) => !isEvenNumber(number);

String isEvenNumbers(int number) => number % 2 == 0  ? 'Y' : 'N';

int factorial(int value) => value == 1 ? 1 : value * factorial(value - 1);

List<T> forAll<T>(Function fun, List<T> items) => [for (int i = 0; i < items.length; i++) fun(items[i])];

extension MyListExt<T> on List<T> {
  List<T> forEach2(Function fun) => [ for (final e in this) fun(e) ];
  List<T> filter(bool fun(T value)) => [ for (final e in this) if (fun(e)) e ];
}

int mimnimumOfList(final List<int> numbers) {
  assert(numbers.isNotEmpty, 'List is empty.');
  int min = numbers.first;
  for (final value in numbers) min = value < min ? value : min;

  return min;
}

int maximumOfList(final List<int> numbers) {
  assert(numbers.isNotEmpty, 'List is empty.');
  int max = numbers.first;
  for (final value in numbers) max = value > max ? value : max;

  return max;
}
