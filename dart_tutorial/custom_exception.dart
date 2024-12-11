class CustomException implements Exception {
   String errorMessage() {
    return 'This is my Custom Exception';
  }
}

void main(List<String> args) {
  throw CustomException();
}