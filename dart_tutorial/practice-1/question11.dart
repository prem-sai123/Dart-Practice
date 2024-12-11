// Suppose, you often go to restaurant with friends and you have to split amount of bill. Write a program to calculate split amount of bill. 
// Formula = (total bill amount) / number of people

void main(List<String> args) {
  const totalAmount = 6789;
  const noOfPeople = 4;
  final splitAmt = totalAmount / noOfPeople;
  print(splitAmt);
}