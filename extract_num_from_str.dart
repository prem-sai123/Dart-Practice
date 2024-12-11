import 'string_ext.dart';

void main(List<String> args) {
  final number = extractNumberFromString('EZF112345');
  print(number);

}

int extractNumberFromString(String? inputString) {
  if(inputString.isNotValid) return 1;
  final underScoreIndx = inputString!.lastIndexOf('_');
  if(underScoreIndx == -1) return 1;
  final linkRef = inputString[underScoreIndx + 1];
  return int.parse(linkRef) + 1;
}
