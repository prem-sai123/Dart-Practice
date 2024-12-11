import 'dart:math';

class ADUser {

  static const ADUser user = ADUser(id: 'Easy000', name: 'John', username: 'John Doe');


  // static const FordFocus fordFocus = FordFocus("Ford", "Focus", "2013", true);
  const ADUser({
    required this.id,
    required this.name,
    required this.username,
    this.defOrganization,
    this.isPswdupdated,
  });

  final String id;
  final String name;
  final String username;
  final String? defOrganization;
  final bool? isPswdupdated;

  // Initializer List
  ADUser.passwdisntUpdated(
      {required this.id, required this.name, required this.username})
      : isPswdupdated = false,
        defOrganization = 'Hyderabad';

  // Factory Constructor
  factory ADUser.initializeId(String name,String username) {
    return ADUser(id: 'Easy${Random().nextInt(10000)}', name: name, username: username);
  }

  // Constant Constructor
  @override
  String toString() {
    return "ADUser(id : $id , name : $name , username : $username , DefOrganization : $defOrganization , isPswdupdated : $isPswdupdated)";
  }
}

void main(List<String> args) {
  final baseConstructor = ADUser(
      id: 'Easy1234', name: 'sai', username: 'sai', defOrganization: 'Saksham');
  final baseConstructor2 = ADUser(
      id: 'Easy1234', name: 'sai', username: 'sai', defOrganization: 'Saksham');
  print(baseConstructor);
  print(baseConstructor2);

  // initializer list
  // The constrctor ADUser.passwdisntUpdated() initializes the instance variable isPswdupdated to false, before the constructor body executes.
  // Anything that is placed on the right hand side of the colon (:) has no access to this.
  final baseConstructor3 =
      ADUser.passwdisntUpdated(id: 'Easy1234', name: 'sai', username: 'sai');
  print(baseConstructor3);

  // Factory constructors
  // used when you don't necessarily want a constructor to create a new instance of your class.
  // This might be useful if you hold instances of your class in memory and don't want to create a new one each time (or if the operation of creating an instance is costly)
  final baseConstructor4 = ADUser.initializeId('sai','sai');
  print(baseConstructor4);
}
