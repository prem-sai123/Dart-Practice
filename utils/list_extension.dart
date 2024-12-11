List<T> convertListToType<T>(List origin) {
  return <T>[
    for (final element in origin)
      if (element is T) element
  ];
}

void main(List<String> args) {
  const list = ['A','B','C','D','E','F',1,2,'T'];
  final strList = convertListToType<String>(list);
  print(strList);

  final intList = convertListToType<int>(list);
  print(intList);
}