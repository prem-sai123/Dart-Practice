void main(List<String> args) {
  final str = "hello";
  print(str.padLeft(10));
  // OUTPUT : _____hello

  print(str.padRight(10));
  // OUTPUT : hello_____

  print(str.padLeft(10,'X'));
  // OUTPUT : XXXXXhello

  print(str.padRight(10,'X'));
  // OUTPUT : helloXXXXX

  print('HELLO'.split('')..clear());
}