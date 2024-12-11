void main() {
  final integers = <int>[]
    ..add(1) // 0
    ..add(2) // 1
    ..add(3) // 2
    ..add(4) // 3
    ..add(5) // 4
    ..add(6) // 5
    ..add(7) // 6
    ..add(8) // 7
    ..add(9); // 8
  final rex = List.empty(growable: true);
  rex.add(1);
  print(rex);
  print(integers.length);
  print(integers);

  integers[1] = 100;
  integers[8] = 10;
  print(integers);

dummy(name: 'HI');
dummy2('HI');
dummy3('op');
}

void dummy({String? name}) { // named params

}
void dummy2(String name) { // positional

}

void dummy3([String? name]) { // optinal

}
