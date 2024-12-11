void main(List<String> args) {
  final setExample1 = <String>{'A', 'B', 'C'};
  print(setExample1);
  final setExample2 = {'A', 'B', 'C', 'D'};
  print(setExample2);
  final setConcat = {...setExample1, ...setExample2};
  print(setConcat);

  print('---------');
  // List vs Set
  final myList = ['Hello', 'World'];
  print(myList); // [Hello,World]
  myList.add('Hello');
  print(myList); // [Hello,World,Hello]
  final mySet = {'Hello', 'World'};
  print(mySet); // {Hello, World}
  mySet.add('Hello');
  print(mySet); // {Hello, World}
  mySet.remove('John');
  print(mySet);
}
