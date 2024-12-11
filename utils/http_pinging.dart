void main(List<String> args) {
  final certificateKeys = <String>[
    '78:5D:19:26:DC:4F:55:05:01:E0:E0:EB:9A:2E:1D:9D:AB:74:70:C8:C0:7B:B9:84:AE:E7:D9:A3:1C:11:91:91',
    'e9fdde9ff04b1bc73e9c0b2af74f87de3b6638336235c4942bd992bb24e23316',
  ];
  final publicKeys = <String>[
    'eb91d93487d9192a7044c695b8779c3bbc4800a4176711093fcd433dde1c907c',
    "99203b29346b8cedc3709d38cee95348bcc2ac54f510d3ce815a745e318bdd34",
  ];
  final keys = <String>[]
    // ..addAll(certificateKeys)
    ..addAll(publicKeys);
  keys.forEach((element) {
    final strList = element.replaceAll(':', '').toUpperCase().split('');
    final _result = [];
    for (int i = 0; i < strList.length; i = i + 2) {
      final _val = '${strList[i]}${strList[i + 1]}';
      _result.addAll([_val]);
    }
    print(_result.join(' '));
  });
}
