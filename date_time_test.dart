void main(List<String> args) {
  final startDate = DateTime.now();
  final endDate = DateTime.now().add(const Duration(seconds: 30));
  final diffInSeconds = endDate.difference(startDate).inSeconds;
  final financialYr = getFinancialYears(DateTime.now().year);
  print(financialYr);
}

  List<DateTime> getFinancialYears(int year) {
    final startYear = year >= 2022 ? year : year - 1;
    final endYear = startYear + 1;
    
    final startDate = DateTime(startYear, 4, 1);
    final endDate = DateTime(endYear, 3, 31);
    return [startDate, endDate];
  }
