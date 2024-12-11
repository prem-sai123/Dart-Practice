class Volume {
  const Volume({required this.qty, required this.unit});

  final int qty;
  final String unit;

  @override
  String toString() => 'Volume( Qty : $qty , Unit : $unit )';
}

abstract class Vessel {
  Volume? volume;
  String? liquid;
}

class Bucket extends Vessel {
  final Volume volume;
  Bucket(int qty,String unit) : volume = Volume(qty: qty, unit: unit);
}