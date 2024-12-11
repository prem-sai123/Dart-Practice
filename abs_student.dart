abstract class _Student {
  String get name;
  int get age;
  String get section;
}

class _Sai extends _Student {
  @override
  int get age => 24;

  @override
  String get name => 'Sai M';

  @override
  String get section => 'Section A';
}

class _John extends _Student {
  @override
  int get age => 32;

  @override
  String get name => 'John Sio';

  @override
  String get section => 'Section C';
}

void main(List<String> args) {
  
}