T swap<T>(T a,T b) {
  T temp = a;
  a = b;
  b = temp;
  return a;
}

void main(List<String> args) {
  int a1 =10;
  int a2 =20;
  print('Before Swap : $a1 & $a2');
  a1 = swap(a1, a2);

  String s1 = "A";
  String s2 = "B";
  print('Before Swap : $s1 & $s2');
  s1 = swap(s1, s2);
  print('After Swap : $s1 & $s2');
}