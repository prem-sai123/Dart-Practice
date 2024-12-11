import 'utils/json_utils.dart';

void main(List<String> args) {
  final res = RepoImpl().getVal();
  print('Res : $res');
}

class _Age {
  const _Age({required this.age});

  final int age;

  static _Age fromJson(final JsonObject obj) {
    return _Age(age: obj['age']);
  }
}

class RepoImpl extends Repo {
  final response = {'age': 'A'};
  getAge() {
    return _Age.fromJson(response);
  }

  getVal() {
    tryCatch(getAge);
  }
}

abstract class Repo {
  Future<void> tryCatch(Function func) async {
    try {
      await func();
    } catch (e, stacktrace) {
      print('Error: $e');
      print('Stacktrace: $stacktrace');
      // Add additional error handling logic here if needed
    }
  }
}
