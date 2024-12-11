void main(List<String> args) {
  const errorMsg = 'frappe.exceptions.AuthError: Incorrect User or password';
  if (errorMsg.contains(':')) {
    final splitMsg = errorMsg.split(':');
    print(splitMsg);
  }

  int? personAge;
  personAge = 10;
  assert(personAge != null, 'Person Age cant be Null');
  print('Passed');
  const myAge = 33;
  print(myAge < 33);
  assert(myAge > 18, 'You are not eligible for voting');
  print(myAge);

  const username = '';
  print(username.isNotEmpty);
  assert(username.isNotEmpty, 'Username can not be empty');
}
