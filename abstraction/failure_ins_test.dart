abstract class Failure {
  const Failure(this.message);
  final String message;
}

class ServerFailure extends Failure {
  const ServerFailure(super.message);
}

class FormFailure extends Failure {
  const FormFailure(super.message);
}

void main() {
  final failure = ServerFailure("Server Failure");

  final res = switch(failure) {
    // TODO: Handle this case.
    ServerFailure() => null,
  };
}