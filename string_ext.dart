import 'dart:io';

import 'MyAppLogger/my_app_logger.dart';

class StringUtils {
  static bool equalsIgnoreCase(String str1, String str2) =>
      str1.toLowerCase() == str2.toLowerCase();

  static bool inList(String s, List<String> list, {bool ignoreCase = false}) {
    for (var l in list) {
      if (ignoreCase) {
        if (equalsIgnoreCase(s, l)) {
          return true;
        }
      } else {
        if (s == l) {
          return true;
        }
      }
    }
    return false;
  }
}

extension StringExt on String? {
  bool get isNull => this == null;

  bool get isValid => (this != null && this!.trim().isNotEmpty && this != 'null');
  bool get isNotValid => !isValid;

  bool get isValidNum => isValid && num.tryParse(this!) != null;
  bool get notAvalidNum => !isValidNum;

  bool get isNullOrEmpty => (this == null || this!.isEmpty) ? true : false;
  bool get isNotNullOrEmpty => !isNullOrEmpty;

  bool get isLowerCase => this?.toLowerCase() == this;

  bool equalsIgnoreCase(String str2) => StringUtils.equalsIgnoreCase(this!, str2);

  int get toInt => isValidNum ? int.parse(this!) : 0;

  double get toDouble => isValidNum ? double.parse(this!) : 0;

  String get cToCapitalized => isValid
      ? '${this![0].toUpperCase()}${this!.substring(1).toLowerCase()}'
      : '';

  /// Converts each word in the string to title case.
  /// 
  /// ```dart
  /// Example : 'geeks for geeks'.toTitleCase => Geeks For Geeks
  /// ```
  String get toTitleCase => this!.replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.cToCapitalized)
      .join(' ');

  String get _capitalize {
    if(isValid) {
      final _listOfLetters = this!.split('').toList();
      final _firstLtr = _listOfLetters.first;
      _listOfLetters.removeAt(0);
      final _remainingLtrs = _listOfLetters.map((e) => e.toLowerCase()).toList();
      return [_firstLtr.toUpperCase(),..._remainingLtrs].join();
    }
    return '';
  }

  List<String> words() => isValid ? this!.split(' ') : [];

  String get toNameCase => isValid ? this!.words().map((e) => e._capitalize).join(' ') : '';
}

extension IntExt on int {
  bool get isGreaterThanHundred => this.compareTo(100) > 1;
}

void main(List<String> args) {
  print('geeks for geeks'.toTitleCase);

  print('geeks for geeks'.toNameCase);

  MyAppLogger.logInfo('geeks for geeks'.toTitleCase);
  MyAppLogger.logError('geeks for geeks'.toTitleCase);
  MyAppLogger.logSuccess('geeks for geeks'.toTitleCase);
}

void info(String message) => stdout.writeln('INFO: $message');

void warning(String message) => stdout.writeln('WARNING: $message');

void error(String message) => stderr.writeln('ERROR: $message');

