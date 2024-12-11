class User {
  const User(this._id, this._userName, this._name, this._password);

  final String _id;
  final String _userName;
  final String _name;
  final String _password;

  String get id => _id;
  String get username => _userName;
  String get name => _name;
  String get pswd => _password;

  @override
  String toString() => 'User( id : $_id (&) UserName : $_userName (&) Name : $_name (&) Pswd : $_password)';

  User copyWith({
    String? id,
    String? username,
    String? name,
    String? pswd,
  }) =>
      User(id ?? _id, username ?? _userName, name ?? _name, pswd ?? _password);

  bool operator == (Object other) => identical(this, other) || other is User;
}

void main(List<String> args) {
  final _userList = const [
    User('1', 'User - 1', 'User - 1', 'Ezfinanz'),
    User('2', 'User - 2', 'User - 2', 'Ezfinanz'),
    User('3', 'User - 3', 'User - 3', 'Ezfinanz'),
    User('1', 'User - 1', 'User - 1', 'Ezfinanz'),
  ];
  final firstUser = _userList.first;
  firstUser.id;
  print(_userList);
  print('Before Updation : ${_userList.contains(firstUser)}');
  var updatedUser = firstUser.copyWith(id: '4');
  print('Is Equals : ${firstUser == updatedUser}');
  print('After Updation : ${_userList.contains(updatedUser)}');

  print(identical('A', 'B'));
}
