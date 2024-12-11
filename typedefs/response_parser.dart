typedef JSONParser<T> = T Function(Map<String, dynamic> json);

class ResponseParser<T> {
  ResponseParser(this.parse);
  final JSONParser<T> parse;
}

class User {
  const User(this.name, this.city);

  final String name;
  final String city;

  factory User.fromJson(Map<String, dynamic> json) =>
      User(json['name'] as String, json['city'] as String);

  @override
  String toString() => 'User( name : $name & city : $city )';
}

void main(List<String> args) {
  const users = [
    {'name': 'Harry Potter', 'city': 'London'},
    {'name': 'Don Quixote', 'city': 'Madrid'},
    {'name': 'Joan of Arc', 'city': 'Paris'},
    {'name': 'Rosa Park', 'city': 'Alabama'}
  ];
  ResponseParser parser = ResponseParser<User>(User.fromJson);
  var userList = users.map(parser.parse).toList();
  print(userList);
}
