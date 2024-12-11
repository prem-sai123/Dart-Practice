void main(List<String> args) {
  String mask(String? value, [int toBeVisible = 4]) {
    if (value == null) return '';
    if (value.length < toBeVisible) return value;

    print('Length : ${value.length}');
    print('UnMasked : ${value.substring(0, value.length - toBeVisible)}');
    print(value.length - toBeVisible);
    print('Masked : ${value.substring(value.length - toBeVisible, value.length)}');

    final unMaskedText = value.substring(0, value.length - 4);
    final maskedText = value.substring(0, value.length - 4);
    return '${value.substring(0, value.length - 4).replaceAll(RegExp("[0-9]"), "X")}$toBeVisible';
  }

  final value = 'TR-10011127';
  print(value);
  print(mask(value));
}
