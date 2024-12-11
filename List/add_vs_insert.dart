void main(List<String> args) {
  var numbersInString = ['100','200','300','400'];
  print(numbersInString); // [100, 200, 300, 400]

  // [add] will insert element at the end of the list
  numbersInString.add('500');
  print(numbersInString); // [100, 200, 300, 400, 500]

  // [insert] will insert element at the selected index of the list
  numbersInString.insert(0, '0');
  print(numbersInString); // [0, 100, 200, 300, 400, 500]

  numbersInString.addAll(['600','700']);
  print(numbersInString); // [0, 100, 200, 300, 400, 500, 600, 700]

  numbersInString.insertAll(0, ['-200','-100']);
  print(numbersInString); // [-200, -100, 0, 100, 200, 300, 400, 500, 600, 700]
}