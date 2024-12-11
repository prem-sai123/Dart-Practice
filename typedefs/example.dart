typedef Addition = int Function(int a1, int a2);

int addTwoNumbers(int a1, int a2) => a1 + a2;
void main(List<String> args) {
  Addition addition = addTwoNumbers;
  print(addition.call(10,10));
}
