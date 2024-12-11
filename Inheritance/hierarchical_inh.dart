class Animal {
  String animaltype() => 'Parent Animal';
}

class Lion extends Animal {
  @override
  String animaltype() => 'Lion is a Carnivore';
}

class Elephant extends Animal {
  @override
  String animaltype() => 'Elephane is a Herbivore';
}

class Nothing extends Animal {
}

void main(List<String> args) {
  print(Lion()..animaltype());

  Animal elephant = Elephant();
  print(elephant.animaltype());
  print(Nothing().animaltype());
}