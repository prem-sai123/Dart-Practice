import 'utils/json_utils.dart';

typedef ListMapper<X> = Map<X, List<X>>;

class CricketPlayer {
  final String name;
  final int age;
  const CricketPlayer(this.name, this.age);
  @override
  String toString() => 'CricketPlayer ( name : $name & age : $age )';
}

void main(List<String> args) {
  List<CricketPlayer> createPlayer(List<String> names, List<int> ages) {
    assert(names.length == ages.length, 'No.of Players should match with ages');
    return [
      for (int i = 0; i < names.length; i++) CricketPlayer(names[i], ages[i])
    ];
  }
  
  List<CricketPlayer> getPlayFromMap(final List<JsonObject> map) {
    return map.map((e) => CricketPlayer(e.keys.first, e.values.firstOrNull)).toList();
  }

  const myIntList = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

  final evenNumbers = [
    for (final num in myIntList)
      if (num % 2 == 0) num
  ];
  print('Even Numbers : $evenNumbers');
  // final oddNumbers = [for(final num  in myIntList) if(num % 2 != 0) num];
  // print(oddNumbers);

  final oddNumbers = myIntList.difference(evenNumbers);
  print('Odd Numbers : $oddNumbers');

  final allPlayers = [
    'Rohit Sharma',
    'Shubman Gill',
    'Ruturaj Gaikwad',
    'Virat Kohli',
    'Surya Kumar Yadav',
    'Sanju Samson',
    'Ishan Kishan',
    'Hardik Pandya',
    'Shardul Thakur',
    'R Jadeja',
    'Axar Patel',
    'Yuzvendra Chahal',
    'Kuldeep Yadav',
    'Jaydev Unadkat',
    'Mohammed Siraj',
    'Urman Malik',
    'Mukesh Kumar'
  ];
  final allPlayersAge = [
    36,
    23,
    26,
    34,
    32,
    28,
    25,
    29,
    31,
    34,
    29,
    33,
    28,
    31,
    29,
    23,
    34,
  ];

  final players = createPlayer(allPlayers, allPlayersAge);
  final playersMap = players.toJson;
  print(getPlayFromMap(playersMap));
  final cwc2023Players = [
    'Rohit Sharma',
    'Hardik Pandya',
    'Shubman Gill',
    'Virat Kohli',
    'Shreyas Iyer',
    'KL Rahul',
    'R Jadeja',
    'Shardul Thakur',
    'Jasprit Bumrah',
    'Mohammed Siraj',
    'Kuldeep Yadav',
    'Mohammed Shami',
    'Axar Patel',
    'Ishan Kishan',
    'Surya Kumar Yadav'
  ];

  final unSelectedPlayers = allPlayers.difference(cwc2023Players);
  print('UnSelectedPlayers for CWC2023 : $unSelectedPlayers');

  // for (final num in [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]) {
  //   if (num == 5) continue;
  //   print(num);
  // }
  final summation =
      myIntList.fold(0, (previousValue, element) => previousValue + element);
  print('Summation : $summation');
  
  final mapStr = {
    '1': ['A', 'B', 'C']
  };
}

extension DifferenceListItems<T> on List<T> {
  /// difference is used to return Items which exists in List1 and not in List2
  List<T> difference(List<T> v2) => toSet().difference(v2.toSet()).toList();
}

extension PlayerExt on List<CricketPlayer> {
  List<JsonObject> get toJson => this.map((e) => {e.name : e.age}).toList();
}
