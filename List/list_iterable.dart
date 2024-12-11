void main(List<String> args) {
  final _numerlist = List.generate(6, (i) => i + 1);
  print(_numerlist);
  for(final num in _numerlist.take(4)) print(num);

  final _iterableList = Iterable.generate(6,(i) => i +1);
  print(_iterableList);
  for(final num in _iterableList.take(4)) print(num);
}