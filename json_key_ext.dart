void main(List<String> args) {
  final exJson = {
    "mngr_assest_count": {"Equity": 44, "Balanced": 4, "null": 1}
  };

  final mainKeys = exJson.keys.toList();
  print(mainKeys);
  final mngrAsset = exJson['mngr_assest_count'] as Map;
  print(mngrAsset.keys.toList());
  print(mngrAsset.entries);
}
