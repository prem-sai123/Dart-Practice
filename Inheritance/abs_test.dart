abstract class Shape {
  double measureArea() => 0.0;
  int dummytest();
}

class OneShape extends Shape {
  @override
  double measureArea() => 1.0;
  
  @override
  int dummytest() => throw UnimplementedError();
}

class ShapeImpl implements Shape {
  @override
  double measureArea() => throw UnimplementedError();
  
  @override
  int dummytest() => throw UnimplementedError();

}
