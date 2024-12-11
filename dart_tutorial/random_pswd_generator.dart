// Write a program in Dart that generates random password.
import 'dart:math';

void main(List<String> args) {
  const pswdLength = 18;
  final _random = new Random();

  final _uppercaseChars = List.generate(26, (index) => String.fromCharCode(index + 65));
  final _lowercaseChars = List.generate(26, (index) => String.fromCharCode(index + 97));
  // final symbols = '!@#\$%^&*()<>,./'.split('');
  final strpswd = [_lowercaseChars,..._uppercaseChars].join();
  String password = '';
  for (int i = 0; i < pswdLength; i++) {
    int index = _random.nextInt(strpswd.length);
    password += strpswd[index];
  }
  print(password);
}
