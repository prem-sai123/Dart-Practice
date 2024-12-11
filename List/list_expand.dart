void main(List<String> args) {
  var srcList = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I'];
  var expandedlist = [
    ...srcList.expand((e) => [e, '1'])
  ];
  print(expandedlist);

  var nullableList = ['A', 'B', null, 'C', null, 'D', null, null];
  var valueList = nullableList.nonNulls.toList();
  print(valueList);

  var firstElement = valueList.firstWhere((e) => e == 'E', orElse: () => 'NA');
  print(firstElement);
}
