typedef DF = SmartDateFormat;

class SmartDateFormat {
  SmartDateFormat._();

  static bool isYesterday(DateTime date1, DateTime date2) {
    if (date1.year == date2.year && date1.month == date2.month) {
      return date1.day - date2.day == 1;
    }
    return false;
  }

  Map<int, int> MONTH_DAY = {
    1: 31,
    2: 28,
    3: 31,
    4: 30,
    5: 31,
    6: 30,
    7: 31,
    8: 31,
    9: 30,
    10: 31,
    11: 30,
    12: 31,
  };
}

extension DateTimeExtension on DateTime {
  bool isToday(DateTime date) =>
      date.day == day && date.month == month && date.year == year;
}

void main(List<String> args) {}
