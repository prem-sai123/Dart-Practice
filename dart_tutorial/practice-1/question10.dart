// Write a dart program to convert String to int.

void main(List<String> args) {
  const StrNumber = "10";
  print('$StrNumber Type before parsing : ${StrNumber.runtimeType}');
  final intNumber = int.parse(StrNumber);
  print('$intNumber Type after parsing : ${intNumber.runtimeType}');
}