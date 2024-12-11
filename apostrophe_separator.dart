void main(List<String> args) {
  const _baseUrl = "https://testflutterapp.easycloud.in/FlutterApp";
  final selectedIds = [
    'EZF138754',
    'EZF138755',
    'EZF138756',
    'EZF138757',
    'EZF138758'
  ];
  final searchQuery = "bocNo123455u";
  final categoryCondition = selectedIds.isEmpty
      ? null
      : "productCategory.id in (${selectedIds.map((e) => "'$e'").toList().join(',')})";
  final searchCondition = searchQuery.isEmpty
      ? null
      : "lower(name) like ${searchQuery.toLowerCase()}";
  final conditions = [categoryCondition,searchCondition].where((e) => e != null).toList();

  if(conditions.isEmpty) {
    print('No Conditions Found');
  } else {
    print("$_baseUrl?_where=${conditions.join(' and ')}");
  }
}
