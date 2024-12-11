
void main(List<String> args) {
  final numbers = [1, 67, 34, 22, 33, 66, 97, 3, 22];

  final summationFold =
      numbers.fold(0, (previousValue, element) => previousValue + element);
  print('Sum using fold : $summationFold');

  final summationReduce = numbers.reduce((value, element) => value + element);
  print('Sum using Reduce : $summationReduce');

  int sumForLoop = 0;
  for (int number in numbers) {
    sumForLoop += number;
  }
  print('Sum using for loop : $sumForLoop');

  int sumForEach = 0;
  numbers.forEach((element) => sumForEach += element);
  print('Sum using forEach : $sumForEach');

  const _list1 = [1,2,3,4,5];
  const _list2 = [1,2,3,4,5,6,7,8,9];
  final _sum = findSumOnfold;
  print(_sum(numbers));
  print(_sum(_list1));
  print(_sum(_list2));
}

int findSumOnfold(final List<int> values) => values.fold(0, (prevVal, ele) => prevVal + ele);
