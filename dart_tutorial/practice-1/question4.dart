// Write a program in Dart that finds simple interest. Formula= (p * t * r) / 100

void main(List<String> args) {
  const principalAmt = 2000;
  const timePeriod = 1; // in yrs
  const rate = 10; // %

  final simpleInterest = (principalAmt * timePeriod * rate) / 100;
  print('Simple Interest : $simpleInterest');
}