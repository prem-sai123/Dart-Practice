class Animal {
  String animaltype() => "Animal";
}

class Lion extends Animal {
  @override
  String animaltype() => "Lion is a Carnivore";
}

void main(List<String> args) {
  print('Arguemnts : $args');
  Animal lion = Lion();
  print(lion.animaltype());
}
