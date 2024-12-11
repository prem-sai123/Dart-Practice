enum DioStatus {
  OK(200),
  UnAuthorized(401),
  Server(500);

  final int _status;
  const DioStatus(this._status);

  bool operator <(DioStatus status) => _status < status._status;
  bool operator > (DioStatus status) => _status > status._status;
}

void main(List<String> args) {
  const _myStatus = DioStatus.UnAuthorized;
  if(_myStatus < DioStatus.UnAuthorized) {
    print('HI');
  } else {
    print('Hello');
  }
}