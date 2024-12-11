void main(List<String> args) {
  // Imagine having a number and the task is to find out the sum of all the numbers from 1 to the given number.

  const myNumber = 5;
  print(getSummation(myNumber));
}

/// Using Recusrion
/// 
/// Recursion has Two parts
/// 
/// Base Condition: The base condition acts as an exit point for the recursive function. It is used to stop the recursive function calls.
/// 
/// Recursive Case: The recursive case is where the function keeps calling itself again and again.
/// 
/// Time Complexity : O(n)
/// 
/// Space Complexity : O(n) // The no.of recursice calls because the func calls itself
/// 
/// Where n is no.of recursive calls

int getSummation(final int num) {
  if(num == 0) return 0; // Base Condition
  return num + getSummation(num - 1); // Recursive case
}