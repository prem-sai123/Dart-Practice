import 'utils/tuples_util.dart';

void main(List<String> args) {
  final _now = DateTime(2023,03,03);
  print('Date : $_now');
  print(_previousFinancialYear());
}

Pair<DateTime, DateTime> _currentFinancialYear() {
  final datetime = DateTime.now();
  final year = datetime.year;
  if (datetime.month < 4) {
    final start = DateTime(year - 1, 04, 01);
    final end = DateTime(year, 03, 31);
    return Pair(start, end);
  } else {
    final start = DateTime(year, 04, 01);
    final end = DateTime(year + 1, 03, 31);
    return Pair(start, end);
  }
}

Pair<DateTime, DateTime> _previousFinancialYear() {
  final datetime = DateTime.now();
  final year = datetime.year;
  if (datetime.month < 4) {
    final start = DateTime(year - 2, 04, 01);
    final end = DateTime(year - 1, 03, 31);
    return Pair(start, end);
  } else {
    final start = DateTime(year - 1, 04, 01);
    final end = DateTime(year, 03, 31);
    return Pair(start, end);
  }
}
