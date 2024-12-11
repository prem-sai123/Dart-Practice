abstract class ABCRepo {
  void authCheck();
}

class ABCRepoImpl extends ABCRepo {
  @override
  void authCheck() => print('ABC Auth Check Requested.');
}

class ABCRepoImplCopy extends ABCRepo {
  @override
  void authCheck() => print('ABC-Copy Auth Check Requested.');
}

class AuthCubit {
  final ABCRepo repo;

  AuthCubit(this.repo);

  void authCheck() => repo.authCheck();
}

void main(List<String> args) {
  AuthCubit(ABCRepoImplCopy()).authCheck();
}
