import 'dart:convert';
import 'dart:io';

void main() async {
  List<String> list = ["A", "B", "C"];

  // Join the strings in the list into a single string
  String combinedString = list.join();

  // Convert the combined string to bytes using UTF-8 encoding
  List<int> bytes = utf8.encode(combinedString);

  // Encode the bytes as base64
  String base64String = base64Encode(bytes);

  print("Base64 String: $base64String");
  await File('/Users/sai/Practice/dart/file/abc.txt')..createSync() ..writeAsBytesSync(base64Decode(base64String));
}
