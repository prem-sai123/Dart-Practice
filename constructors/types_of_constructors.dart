/// Constructors

class _Person {
  final String name;
  final int age;
  late final String? occupation;

  /// Initializing the class members inside the constructor body :
  // _Person.withOccupation(this.name, this.age, this.occupation);

  /// Initializing the members before the constructor body :
  _Person(this.name, this.age,this.occupation) {
    assert(age != 0, 'Person Age cant be Zero');
  }

  /// Named constructor
  /// ```dart
  /// For Example : _Person.initial('Name',76);
  /// ```
  _Person.initial(this.name, this.age) {
    occupation = 'IN';
    assert(name.isNotEmpty, 'Person Name cant be empty.');
  }

  /// Redirecting Constructors 
  /// 
  /// Type of constructor redirects to another constructor.
  _Person.registerFarmer(String name,int age) : this(name,age,'Farmer');

  @override
  String toString() {
    return 'Person ( Name : $name & Age : $age & Occpation : $occupation)';
  }
}

void main(List<String> args) {
  final person1 = _Person('John', 10,'Hero');
  final person2 = _Person.initial('Hary', 35);
  final person3 = _Person.registerFarmer('Raju', 66);
  print('Person-1 $person1');
  print('Person-2 $person2');
  print('Person-3 $person3');
}
