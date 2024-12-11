// Write a dart program to add your name to “hello.txt” file.

import 'dart:io';
import 'dart:typed_data';

void main(List<String> args) {
  final filePath = '/Users/sai/Practice/dart /file/hello.txt';
  final file = File(filePath);
  if (file.existsSync()) {
    print('File Already Exists so Deleting');
    file.deleteSync();
  }
  file.createSync();
  final myNameCodeUnits =
      'KOLORS HEALTHCARE LLP - SRM MOTORS -  Khammam - TELANGANA'.codeUnits;
  file.writeAsBytesSync(Uint8List.fromList(myNameCodeUnits));
  print('Successfully Written');
}
