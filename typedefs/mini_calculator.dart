
class MiniCalculator {
  MiniCalculator({required this.calculation});

  final int Function(int num1,int num2) calculation;

  int perform(int num1,int num2) => calculation.call(num1,num2);
}

int add(int a, int b) => a + b;
int multiply(int a, int b) => a * b;

void main(List<String> args) {
  final miniAddCal = MiniCalculator(calculation: add);
  final miniMulCal = MiniCalculator(calculation: multiply);
  print(miniAddCal.perform(10, 20));
  print(miniMulCal.perform(10, 20));
}