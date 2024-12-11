enum ShapeType { Triangle, Circle, Rectangle }

abstract class Shape {
  final ShapeType type;

  const Shape(this.type);

  void draw();
}

abstract class FactoryShape {
  factory FactoryShape(ShapeType type) => switch (type) {
        ShapeType.Triangle => Triangle(),
        ShapeType.Circle => Circle(),
        ShapeType.Rectangle => Rectangle(),
      };

  void draw();
}

class Triangle implements FactoryShape {
  @override
  void draw() => print('Drawing Triangle.');
}

class Circle implements FactoryShape {
  @override
  void draw() => print('Drawing Circle.');
}

class Rectangle implements FactoryShape {
  @override
  void draw() => print('Drawing Rectangle.');
}

void main(List<String> args) => [
      FactoryShape(ShapeType.Triangle).draw(),
      FactoryShape(ShapeType.Circle).draw(),
      FactoryShape(ShapeType.Rectangle).draw(),
    ];
