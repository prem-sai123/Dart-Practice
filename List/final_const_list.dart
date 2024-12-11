void main(List<String> args) {
  final _finalList = [1, 2, 3, 4, 5];
  const _constList = [11, 22, 33, 44, 55];

  // final : we can still add/remove the elements inside the list.
  _finalList.add(6);
  _finalList.addAll([7, 8, 9]);

  // const : we cant add/remove elements : unmodifiable list
  // _constList.add(66);
  print(_finalList);
  print(_constList);

  /// unmodifiable factory constructors to make these data structures completely immutable.
  // final _unmodifiableFinalList = List.unmodifiable([1,2,3,4,5,6,7]);
  // we cant add/remove elements : Cannot add to an unmodifiable list
  // _unmodifiableFinalList.add(9);
  // print(_unmodifiableFinalList);

  final set1 = {'A', 'B', 'C', 'D', 'E', 'F'};
  final set2 = {'A', 'G', 'H', 'I', 'J'};
  final diffSet = set1.difference(set2);
  print(diffSet);
}
