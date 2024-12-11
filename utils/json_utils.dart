/// https://gitlab.com/dade.sliep/flutterx_utils/-/blob/master/lib/src/utils/dto.dart?ref_type=heads
///
/// https://pub.dev/packages/flutterx_utils
///
/// JsonUtils
///
typedef JsonObject = Map<String, dynamic>;

typedef FromJsonObject<T> = T Function(JsonObject json);

mixin DTO<T> {
  JsonObject toJson();
}

extension DTOListExt<T extends DTO> on Iterable<T> {
  List<JsonObject> toJsonList() =>
      <JsonObject>[...map((item) => item.toJson())];
}

extension HighOrderFunctions<T> on T {
  /// Useful to use with nullable variables e.g. value?.let(doSomething);
  R let<R>(R Function(T value) let) => let(this);
}

void main(List<String> args) {
  const users = [
    {'name': 'Harry Potter', 'city': 'London'},
    {'name': 'Don Quixote', 'city': 'Madrid'},
    {'name': 'Joan of Arc', 'city': 'Paris'},
    {'name': 'Rosa Park', 'city': 'Alabama'}
  ];
  print(users);
  var usersList = users.map(User.fromJson).toList();
  var usersJosnList = usersList.toJsonList();
  print(usersList);
  print(usersJosnList);
}

void repeat(int count, void Function(int i) computation) {
  for (var i = 0; i < count; i++) computation(i);
}

class User with DTO {
  const User(this.name, this.city);

  final String name;
  final String city;

  factory User.fromJson(Map<String, dynamic> json) =>
      User(json['name'] as String, json['city'] as String);

  @override
  String toString() => 'User( name : $name & city : $city )';

  @override
  JsonObject toJson() => {
        'name': name,
        'city': city,
      };
}
