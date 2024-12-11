typedef AsyncValue<T> = Future<T>;

abstract class AuthRepo {
  Future<bool> isLoggedin();
}

class AuthRepoImpl extends AuthRepo {
  @override
  AsyncValue<bool> isLoggedin() async => await Future.value(true);
}

class AuthCubit {
  AuthCubit(this.repo);

  final AuthRepo repo;

  void isLoggedIn() async {
    final _isLoggedIn = await repo.isLoggedin();
    print('_isLoggedIn : $_isLoggedIn');
  }
}

void main(List<String> args) {
  AuthCubit(AuthRepoImpl()).isLoggedIn();
}
