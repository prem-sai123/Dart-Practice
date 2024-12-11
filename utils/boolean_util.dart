abstract class BooleanUtils {
  /// The false String "false"
  static final String FALSE = 'false';

  /// The true String "true"
  static final String TRUE = 'true';

  static List<bool> booleanValues() => [false, true];

  ///   BooleanUtils.toBoolean(0) = false
  ///
  ///   BooleanUtils.toBoolean(1) = true
  ///
  ///   BooleanUtils.toBoolean(2) = true
  static bool toBoolean(final int value) => value != 0;

  /// Converts a Boolean to a boolean handling null.
  ///
  ///   BooleanUtils.toBooleanDefaultIfNull(true, false) = true
  ///
  ///   BooleanUtils.toBooleanDefaultIfNull(null, true) = true
  ///
  ///   BooleanUtils.toBooleanDefaultIfNull(null, false) = false

  static bool toBooleanDefaultIfNull(
      final bool? value, final bool valueIfNull) {
    if (value == null) return valueIfNull;
    return value;
  }

  /// Converts a boolean to an int using the convention that
  ///
  /// true is 1 and false is 0
  ///
  ///   BooleanUtils.toInteger(true)  = 1
  ///
  ///   BooleanUtils.toInteger(false) = 0
  static int toInteger(final bool bool) => bool ? 1 : 0;

  static String toBooleanString(final bool value) => value ? TRUE : FALSE;
}

void main(List<String> args) {
  final _values = BooleanUtils.booleanValues();
  print(_values);
}
