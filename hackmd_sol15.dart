// Write a password generator in Dart.
// Be creative with how you generate passwords - strong passwords have a mix of lowercase letters, uppercase letters,
// numbers, and symbols. The passwords should be random, generating a new password every time the user asks
// for a new password. Include your run-time code in a main method.

// Ask the user how strong they want their password to be. For weak passwords, pick a word or two from a list.

import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print('Enter Password Mode : ');
  final pswdStrength = stdin.readLineSync()!;
  switch (pswdStrength) {
    case "weak":
      _generatePassword(5);
      break;
    case "medium":
      _generatePassword(10);
      break;
    case "strong":
      _generatePassword(15);
      break;
    default:
      print('Invalid mode. Please enter either weak,medium or strong');
  }
}

/// Generated a Random Secured Password
/// 
/// Example:
/// ```dart
/// _generatePassword(10) // => NWq=PJe=HYF0j12g
/// ```

void _generatePassword(int length) {
  final _randomSecure = Random.secure();
  final _randomPswdList =
      List.generate(length, (index) => _randomSecure.nextInt(255));
  final pswd = base64UrlEncode(_randomPswdList).split('').toList();
  pswd.shuffle();
  print(pswd.join(''));
}
