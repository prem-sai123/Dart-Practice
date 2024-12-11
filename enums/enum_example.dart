enum ApiState { Initial, Loading, Success, Failure; }

void main(List<String> args) {
  final _apiState = ApiState.Initial;
  switch (_apiState) {
    case ApiState.Initial:
      print('Api is in Initial State');
      break;
    case ApiState.Loading:
      print('Api is in Loading State');
      break;
    case ApiState.Success:
      print('Api is in Success State');
    // break;
    case ApiState.Failure:
      print('Api is in Failed State');
      break;
    default:
      print('Api is in Invalid State');
  }
}
