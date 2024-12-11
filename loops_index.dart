void main(List<String> args) {
  // final alphaValues = ['A', 'B', 'C', 'D', 'E', 'F'];
  // final numnericValues = List.generate(10, (index) => index);

  // print(alphaValues);
  // print(numnericValues);

  // final listLength = numnericValues.length;
  // for (int i = 0; i < listLength; i++) {
  //   final indexedVal = i % alphaValues.length;
  //   print('$i % ${alphaValues.length} indexedVal: $indexedVal');
  //   print('Value : $i -- ${alphaValues[indexedVal]}');
  // }

  // const fullpath = "/home/dashbaord/pickups";
  // print(fullpath.split("/").last);

  final filters = PickUpFilters.init();
  print(filters.activeDay);

  for(final day in filters.weekDays) {
    print(day);
  }
}

class PickUpFilters {
  factory PickUpFilters.init() {
    final now = DateTime.now();
    final startOfWeek = now.subtract(Duration(days: now.weekday - DateTime.monday));
    final weekDays =
        List.generate(7, (index) => startOfWeek.add(Duration(days: index)));
    final activeDayIndex = now.weekday - DateTime.monday;
    return PickUpFilters(weekDays: weekDays, activeDay: weekDays[activeDayIndex]);
  }

  const PickUpFilters({required this.weekDays, required this.activeDay});

  final List<DateTime> weekDays;
  final DateTime activeDay;

  @override
  List<Object?> get props => [weekDays, activeDay];
}
