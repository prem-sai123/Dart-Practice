class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});

  @override
  String toString() => 'Person ( Name : $name and Age : $age)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Person ? name == other.name && age == other.age : false);
}

class Engineer extends Person {
  // Bad
  // Engineer({required String name, required int age})
  //     : super(name: name, age: age);

  // Good
  Engineer({required super.name, required super.age});
}

void main(List<String> args) {
  final engineer = Engineer(name: 'John', age: 52);
  print(engineer.name);
  print(engineer.age);
  print(engineer);
}
