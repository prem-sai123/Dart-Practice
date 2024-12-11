import '../Inheritance/auth_repo.dart';

abstract class AuthRepo {
  AsyncValue<bool> isLoggedin();
  AsyncValue<bool> login();
  AsyncValue<bool> logout();
}


class  AuthCubit {

}

abstract class QueryRepo {
  AsyncValue<String> fetchQuery();
}

class AuthRepoImpl extends AuthRepo {
  // MI fails
  @override
  AsyncValue<bool> isLoggedin() {
    // TODO: implement isLoggedin
    throw UnimplementedError();
  }

  @override
  AsyncValue<bool> login() {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  AsyncValue<bool> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}

class AuthRepoImpl2 implements AuthRepo, QueryRepo {
  @override
  AsyncValue<bool> isLoggedin() {
    // TODO: implement isLoggedin
    throw UnimplementedError();
  }

  @override
  AsyncValue<bool> login() {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  AsyncValue<bool> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  AsyncValue<String> fetchQuery() {
    // TODO: implement fetchQuery
    throw UnimplementedError();
  }
}
