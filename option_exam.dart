void main(List<String> args) {
  final strValues = ['A', 'B', 'C', 'D', 'E', 'F'];
  final values = strValues.map((e) => "'$e'").toList().join(',');
  print(values);

  for(int index =0; index < values.length; index++) {
    print('Index : $index');
    print((index + 1) *10);
    // if(index ==0) {
    //   print(index +1*10);
    // } else {
    //   print(index *10);
    // }
  }
}
