// Write a dart program to copy the “hello.txt” file to “hello_copy.txt” file.

import 'dart:io';

void main(List<String> args) {
  final oldFilePath = '/Users/sai/Practice/dart /file/hello.txt';
  final newFilePath = '/Users/sai/Practice/dart /file/hello_copy.txt';
  final oldFile = File(oldFilePath);
  oldFile.copySync(newFilePath);
}
