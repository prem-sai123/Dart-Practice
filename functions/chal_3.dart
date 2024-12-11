// https://www.educative.io/courses/learn-dart-first-step-to-flutter/getter-and-setters

class Figure {
  Figure(this.left, this.width, this.top, this.height);
  num left, width, top, height;

  num get right => left + right;
  void set right(num value) => left = value - width;
  num get bottom => top - height;
  void set bottom(num value) => top = value + height;
}

void main(List<String> args) {
  var fig = Figure(3, 4, 20, 15);
  print(fig.left);
  print(fig.right);
  fig.right = 12;
  print(fig.left);
}
