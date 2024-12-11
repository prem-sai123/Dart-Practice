import 'dart:convert';

import '../utils/utils.dart';

void main(List<String> args) {
  final map1 = {
    'key1': 'Value1',
    'key2': 'Value2',
    'key3': 'Value3',
    'key4': 'Value4',
    'key5': 'Value5',
    'key6': 'Value6',
  };
  print('All Keys : ${map1.keys}');
  print('All Values : ${map1.values}');
  print('All Values : ${map1.entries}');
  for (final entry in map1.entries) {
    print('MapEntry(${entry.key} : ${entry.value})');
  }
  print('Is Map Empty : ${map1.isEmpty}');
  print('Is Map Not Empty : ${map1.isNotEmpty}');
  print('Is Object Null : ${map1.isNull}');
  print('Map Length : ${map1.length}');
  map1['Key7'] = 'Value'; // Adding Value
  print('After Adding Key7 : ${map1}');
  map1['Key7'] = 'Value7'; // Updating Value of a Key
  print('After Updating Key Map : ${map1}');
  map1.forEach((key, value) {}); // loop through for each

  final dummyJsonStr = jsonEncode({
    "data": {
      "name": "FBO-02",
      "owner": "obaid@easycloud.in",
      "creation": "2024-03-15 00:22:31.754940",
      "modified": "2024-03-15 00:22:31.754940",
      "modified_by": "obaid@easycloud.in",
      "docstatus": 0,
      "idx": 0,
      "naming_series": "SUP-.YYYY.-",
      "supplier_name": "Test supplier5",
      "country": "India",
      "business_name": "Test business5",
      "mobile_no": "+91-8328097262",
      "owner_name": "Test Owner1",
      "owner_contact_no": "+91-8328097262",
      "supplier_type": "Restaurant",
      "is_transporter": 0,
      "manager_name": "Test manager4",
      "manager_contact_no": "+91-8328097262",
      "active": 0,
      "pricekg": 0,
      "cans_given": 0,
      "status": "",
      "approved": 0,
      "remarks": "",
      "payment_type": "Cash",
      "is_internal_supplier": 0,
      "language": "en",
      "allow_purchase_invoice_creation_without_purchase_order": 0,
      "allow_purchase_invoice_creation_without_purchase_receipt": 0,
      "is_frozen": 0,
      "disabled": 0,
      "warn_rfqs": 0,
      "warn_pos": 0,
      "prevent_rfqs": 0,
      "prevent_pos": 0,
      "on_hold": 0,
      "hold_type": "",
      "doctype": "FBO",
    }
  });
  final dummayJson = jsonDecode(dummyJsonStr);
  final dataMap = dummayJson['data'] as Map;
  final fields = dataMap.keys.map((e) => "\"$e\"").toList();
  print(fields);
}
