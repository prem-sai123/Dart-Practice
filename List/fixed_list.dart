void main(List<String> args) {
  const dayOfWeek = 'Monday';
  final dayNumber = switch (dayOfWeek) {
    'Monday' => 1,
    'Tuesday' => 2,
    'Wednesday' => 3,
    'Thursday' => 4,
    'Friday' => 5,
    'Saturday' => 6,
    'Sunday' => 7,
    _ => 10, //Default value
  };
  print(dayNumber);

  final filledList = List.filled(10, 'Flutter', growable: false);
  print(filledList);
  filledList.add('Java');
  print(filledList); // Error
}
