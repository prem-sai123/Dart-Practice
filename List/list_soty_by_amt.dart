void main(List<String> args) {
  final values = [1, 10, 7, 34, 99, 0, 55, 5, 2, 11, 0];
  values.sort((a, b) => b.compareTo(a));
  print(values);
}
