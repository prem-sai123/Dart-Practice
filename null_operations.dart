/*
  ??	If-null operator
  ??=	Null-aware assignment operator
  ?.	Null-aware access & method invocation operator
  !	Null assertion operator
  ?..	Null-aware cascade operator
  ?[]	Null-aware index operator
  ...?	Null-aware spread operator
*/

void main(List<String> args) {
  String? name;
  print(name?.toLowerCase());
  name = name ?? 'NA';
  print(name);

  String? name2;
  name2 ??= 'No Name';
  print(name2);

  List<String>? names;
  print(names?[0]);
}