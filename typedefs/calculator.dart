typedef Operation(num number1, num number2);

void addTwoNumbers(num number1, num number2) => print(number1 + number2);
void subtractTwoNumbers(num number1, num number2) => print(number1 - number2);
void multiplyTwoNumbers(num number1, num number2) => print(number1 * number2);


calculator(num number1,num number2,Operation operation) => operation(number1,number2);
void main(List<String> args) {
  calculator(19, 19, addTwoNumbers);
  calculator(19, 19, subtractTwoNumbers);
  calculator(0, 1, multiplyTwoNumbers);
}
