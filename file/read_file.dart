import 'dart:io';
import 'dart:typed_data';

void main(List<String> args) {
  final filePath = '/Users/sai/Practice/dart /file/9182298847_26-02-2024.csv';
  final file = File(filePath);
  print('isExists : ${file.existsSync()}');
  print('File Path : ${file.path}');
  print('File Absolute Path : ${file.absolute.path}');
  final fileContents = file.readAsStringSync();
  final lines = fileContents.split('\n');
  for (final line in lines) {
    print('Line Length : ${line.split(',').length}');
    print(line);
  }

  // Write file
  final newPath = '/Users/sai/Practice/dart /file/new_file.txt';
  final newFIle = File(newPath);
  if (newFIle.existsSync()) newFIle.deleteSync();
  newFIle.createSync();
  final codeUnits = 'This is Test FIle Written using Dart.'.codeUnits;
  newFIle.writeAsBytesSync(Uint8List.fromList(codeUnits));
}
