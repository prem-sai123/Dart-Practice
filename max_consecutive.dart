import 'dart:math';

void main(List<String> args) {
  int ans = 0;
  int sum = 0;
  const nums = [2, 2, 2, 2, 2, 0, 0, 0];

  for (final num in nums) {
    if (num == 1) {
      ans = max(ans, ++sum);
    } else {
      sum = 0;
    }
    print('$num , $ans');
  }
  print(ans);
}
