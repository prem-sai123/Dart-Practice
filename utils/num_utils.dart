extension SizeNumber on num {
  /// ```dart
  /// Exmaple: 9.half => 4.5
  /// ```
  double get half => this * 0.5;

  /// ```dart
  /// Exmaple: 9.oneHalf => 13.5
  /// ```
  double get oneHalf => this * 1.5;

  /// ```dart
  /// Exmaple: 9.twice => 18.0
  /// ```
  double get twice => this * 2;
}

void main(List<String> args) {
  print(9.half);
  print(9.oneHalf);
  print(9.twice);
}
