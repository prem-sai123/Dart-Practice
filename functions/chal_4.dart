void main(List<String> args) {
  const scores = [50, 96, 57, 68, 52, 87, 97, 43, 81, 30, 75, 60, 59];
  const percentage = 81;
  final average = scores.average;
  if (average >= 60 && percentage > (average - 5)) {
    print('pass');
  } else {
    print('fail');
  }

  final integers = [1, 2, 3, 4, 5];
  final l1 = integers.map((e) => e * 3).toList();
  print(l1.where((element) => element % 2 == 0).toList());
}

bool isEven(int value) => value % 2 ==0;

extension ListInt<T extends int> on List<T> {
  int get average => fold(0, (p, e) => p + e) ~/ length;
}
