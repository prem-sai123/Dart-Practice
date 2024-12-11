void main(List<String> args) {
  final s1 = 'String '
      'Concatenation '
      ' Works';
  print(s1);

  final s2 = """ 
  A
  B
  C
  D
  E
  F
  """;
  print(s2);

  int num = 10;
  print(num++); // 10
  print(num); // 11

  print(++num); // 12
  print(num); // 12

  final name = "JOHN";
  print(name is String);
  print(name is! String);

  const integers = [1, 2, 3];
  print(integers.map(cube).toList());

  var scores = [50, 96, 57, 68, 52, 87, 97, 43, 81, 30, 75, 60, 59];
  var percentage = 81;
}

final cube = (int x) => x * x * x;
