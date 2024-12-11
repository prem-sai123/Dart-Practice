class _ParentClass {
  const _ParentClass(this.level);
  final String level;
    @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _ParentClass && level == other.level;
}

class _ChildClsA extends _ParentClass {
  _ChildClsA(super.level);

  static const a1 = _ParentClass('A1');
  static const a2 = _ParentClass('A2');
  static const a3 = _ParentClass('A3');
}

class _ChildClsB extends _ParentClass {
  _ChildClsB(super.level);

  static const b1 = _ParentClass('B1');
  static const b2 = _ParentClass('B2');
  static const b3 = _ParentClass('B3');
}

void main(List<String> args) {
  final res = _ParentClass('A1') == _ChildClsA.a1;
  print(res);
}


class Dummy {

}
