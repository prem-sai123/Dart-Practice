// Write a dart program to get the current working directory.
import 'dart:io';

void main(List<String> args) {
  final currDirpath = Directory.current.path;
  print(currDirpath);
}
