// Ask the user for a number. Depending on whether the number is even or odd, 
// print out an appropriate message to the user.

void main(List<String> args) {
  const a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  print(a.where((e) => e < 5).toList());
  print([for(final number in a) if(number < 5) number]);
}