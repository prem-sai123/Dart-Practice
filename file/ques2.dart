// Write a dart program to append your friends name to a file that already has your name.

import 'dart:io';
import 'dart:typed_data';

void main(List<String> args) {
  final filePath = '/Users/sai/Practice/dart /file/hello.txt';
  final file = File(filePath);
  if (!file.existsSync()) {
    print('No file found to append Data');
  } else {
    final myFrndName = '\n Mac Book Air';
    file.writeAsStringSync(myFrndName, mode: FileMode.append);
    print('Successfully append');
  }
}
