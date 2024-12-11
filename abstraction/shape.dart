abstract class Human {
  const Human({required String name}) : _name = name;
  final String _name;

  String get name => _name;

  double getAgeLimit();
}

class Gents extends Human {
  Gents({required super.name});

  @override
  double getAgeLimit() => 45.0;
}

class Boys extends Human {
  Boys({required super.name});

  @override
  double getAgeLimit() => 18.0;
}

void main(List<String> args) {
  final boys = Boys(name: 'Boys');
  print(boys.getAgeLimit());
}
