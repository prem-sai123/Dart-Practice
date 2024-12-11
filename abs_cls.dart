abstract class Bank {
  const Bank(this._price);
  final int _price;

  double getRateOfInterest() => _price.toDouble();
}

class SIBBank extends Bank {
  SIBBank(super.price);
}

class YESBank extends Bank {
  YESBank(super.price);
}

class AndhraBank extends Bank {
  AndhraBank() : super(100);

  @override
  double getRateOfInterest() => 6.0;
}

void main(List<String> args) {
  final andhraBank = AndhraBank();
  final andhraBankROI = andhraBank.getRateOfInterest();
  print(andhraBankROI);
  print(andhraBank.getRateOfInterest());
}
