void main(List<String> args) {
  final numbers = [10,34,56,78,32,67,89,09,33,22.9,11];
  final additionOfValues = numbers.fold(0, (previousValue, element) => previousValue + element.toInt());
  print(additionOfValues);

  final examList = ['N1' , 'N2'];
  for(int i = 0; i < examList.length; i++) {
    print('I : $i , ${examList[i]}');
  }
  print(examList.length);
  final isAbc = examList.elementAtOrNull(7) != null;
  print(isAbc);
  checkJson();
}


void checkJson() {
  const jsonEx = {'status' : 200, 'message' : 'hello world'};
  try {
    final message = jsonEx['data'];
    print(message);
  } catch (e) {
    print('On Exception');
    print(e);
  }
}