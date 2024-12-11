import 'dart:async';

void main(List<String> args) {
  final completer = Completer<String>();
  final myFuture = completer.future;
  Future.delayed(
    const Duration(seconds: 5),
    () => completer.completeError(throw Exception('Unknown Exception.')),
  );
  myFuture.catchError((e) {print(e);});
  myFuture.then(print);
}

void _catchException(Exception e) {

}
