String formatShortDate(String shortDate) {
  if (shortDate.length != 6) {
    throw ArgumentError("Invalid short date format. Expected YYMMDD with length 6.");
  }

  // Assuming shortDate is in the format YYMMDD
  int year = int.parse(shortDate.substring(0, 2));
  int month = int.parse(shortDate.substring(2, 4));
  int day = int.parse(shortDate.substring(4, 6));

  // Adding 1900 to the year if it's less than 50, otherwise adding 2000
  year += (year < 50) ? 2000 : 1900;

  // Creating a DateTime object
  DateTime dateTime = DateTime(year, month, day);

  // Formatting the date
  String formattedDate =
      "${dateTime.day.toString().padLeft(2, '0')}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.year.toString()}";

  return formattedDate;
}

void main() {
  try {
    // print(formatShortDate("11298")); // Output: 01-12-1998
    // print(formatShortDate("11020")); // Output: 01-10-2020

    const consolidated = 539973.103;
    print(consolidated.toStringAsFixed(2));
  } catch (e) {
    print("Error: $e");
  }
}
