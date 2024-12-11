import 'Inheritance/auth_repo.dart';

void main(List<String> args) {
  const record = ('first', a: 2, b: true, 'last', c: 1);
  print(record);

  fetchData().then((value) => print('( ${value.$1} ${value.$2} ${value.$3} )'));

  final swappedValues = swapValues(10, 20);
  print('Swapped Values of (10,20) is : $swappedValues');
  String s1 = 'A1';
  String s2 = 'A2';
  print('Before Swapping > S1 : $s1 & S2 : $s2');
  (s1,s2) = swapValues(s1, s2);
  print('After Swapping > S1 : $s1 & S2 : $s2');

  final swap = (int v1, int v2) => (v2, v1);
  final afterSwap = swap(9, 8);
  print(afterSwap);

  ({String name, int age}) person = (name: 'John', age: 34);
  print('Person: $person');

  ({int a, int b}) recordAB = (a: 10, b: 20);
  ({int x, int y}) recordXY = (x: 10, y: 20);

  print('RecordAB : $recordAB');
  print('RecordXY : $recordXY');
  print('RecordAB == RecordXY : ${recordAB == recordXY}');
}

AsyncValue<(String, int, String)> fetchData() async => ('sai', 3, 'Hello');

(T, T) swapValues<T>(T v1, T v2) => (v2, v1);
