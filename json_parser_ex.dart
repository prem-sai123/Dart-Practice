import 'dart:convert';

void main() {
  final exMap = {
    'new_value':
        "{'profile_id': '1035241', 'role': 'C', 'source': 'MOBILE', 'nominee_opted': 'N', 'nominee_count': 2, 'nominee1': {'name': 'VENKATRAJU', 'relation': 'FATHER', 'holdings': '50', 'dob': '1970-03-07', 'pan': '', 'gaurdian': '', 'gaurdian_pan': '', 'id': 117549}, 'nominee2': {'name': 'KUMARI', 'relation': 'MOTHER', 'holdings': '50', 'dob': '1967-05-20', 'pan': '', 'gaurdian': '', 'gaurdian_pan': '', 'id': 117550}}",
  };

  final newvalStr = exMap['new_value']!;
  print(newvalStr.runtimeType);
  final res = jsonDecode(newvalStr.replaceAll("'", '"'));
  print(res);
}
