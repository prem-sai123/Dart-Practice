class Person {
  String? name;
  String? gender;

  void set setName(String name) => this.name = name;
  void set setGender(String gender) => this.gender = gender;

  String? get personName => name;
  String? get personGender => gender;
  @override
  String toString() {
    return 'Person ( Name : $name & Gender : $gender)';
  }
}

void main(List<String> args) {
  final person = Person();
  person.setName = 'John';
  person.setGender = 'M';

  print('Person Name : ${person.personName}');
  print('Person Gender : ${person.personGender}');
  print(person);
}
