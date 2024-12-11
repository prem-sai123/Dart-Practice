class ApiResult<E, T> {
  final E? error;
  final T? data;

  factory ApiResult.ok(T data) => ApiResult(data: data);
  factory ApiResult.error(E error) => ApiResult(error: error);

  const ApiResult({this.error, this.data});

  B fold<B>(B Function(E e) left , B Function(T r) right) {
    if (error != null) return left(error!);
    else return right(data!);
  }

  T getOrElse(T dflt()) => fold((_) => dflt(), id);

  A id<A>(A a) => a;
}

void main(List<String> args) async {
  final res = await ApiRepoImpl().getData();
  res.fold(print, print);
}

class ApiRepoImpl {
  Future<ApiResult<Exception, int>> getData() async {
    try {
      throw Exception('unknown Exception');
      // return ApiResult.ok(100);
    } on Exception catch (e) {
      return ApiResult.error(e);
    }
  }
}
