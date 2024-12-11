// https://blog.stackademic.com/handling-asynchronous-data-in-flutter-with-generic-classes-8a8f74a29321

import 'dart:async';

/// A state class to refer List of Player Names
///
/// ```dart
/// Example : NamesState = <String>['Player 1','Player 2','Player 3'];
/// ```
typedef NamesState = List<String>;

enum ApiState { Intial, Loading, Success, Failed }

/// Common Generic Class
sealed class ApiClass<T> {
  ApiClass({required this.state, this.errorMsg, this.dataOrNull});

  T? dataOrNull;
  String? errorMsg;
  ApiState state;

  T get value => dataOrNull!;

  /// This higher-order function takes four functions for the generic type [R] based on the data state.
  /// Depending on the current data state,
  /// it calls the appropriate function and returns the result.
  R onState<R>({
    required R Function() initial,
    required R Function() loading,
    required R Function(T data) success,
    required R Function(String error) failed,
  }) =>
      switch (state) {
        ApiState.Intial => initial(),
        ApiState.Loading => loading(),
        ApiState.Success => success(value),
        ApiState.Failed => failed(this.errorMsg!),
      };

  @override
  String toString() =>
      'Current State Data Type (${T.runtimeType}) is ${state.name}';
}

/// State Classes Inheriting the Generic Class
class ApiInitial<T> extends ApiClass<T> {
  ApiInitial() : super(state: ApiState.Intial);
}

class ApiLoading<T> extends ApiClass<T> {
  ApiLoading() : super(state: ApiState.Loading);
}

class ApiSuccess<T> extends ApiClass<T> {
  ApiSuccess(this.data) : super(state: ApiState.Success, dataOrNull: data);

  final T data;
}

class ApiFailed<T> extends ApiClass<T> {
  ApiFailed(this.error) : super(state: ApiState.Failed, errorMsg: error);

  final String error;
}

final class StateController {
  final _cntlr = StreamController<ApiClass>();

  Stream<ApiClass> get state => _cntlr.stream;

  void fetchPlayerNames() async {
    _cntlr.add(ApiLoading<NamesState>());
    await Future.delayed(const Duration(seconds: 5), () {
      try {
        final names = ApiSuccess(const ['Virat Kohli', 'Rohit Sharma', 'S Gill', 'John']);
        _cntlr.add(names);
      } on Exception catch (e) {
        final failure = ApiFailed<NamesState>(e.toString());
        _cntlr.add(failure);
      }
    });
  }

  void close() => _cntlr.close();
}


void main(List<String> args) {
  StateController()
    ..fetchPlayerNames()
    ..state.listen((event) {
      event.onState(
        initial: () => print('Initial State'),
        success: print,
        failed: print,
        loading: () => print('Loading State'),
      );
    });
}
