void main(List<String> args) {
  const end = 100;
  bool _isPrime(int num) {
    for (int i = 2; i < num / 2; i++) {
      // checking whether remainder is Zero or not
      if (num % i == 0) return false;
    }
    return true;
  }

  for (int i = 2; i <= end; i++) {
    final isPrime = _isPrime(i);
    if(isPrime) print(i);
  }
}
