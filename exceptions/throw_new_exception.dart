void main(List<String> args) {
  const loanAmount = 3000.0;

  void validateLoanAmount(double amount) {
    final amountIsLessThan5k = loanAmount.compareTo(5000) == -1;
    if (amountIsLessThan5k) {
      throw new LoanAmountException();
    } else {
      print('Entered eligible amount');
    }
  }

  try {
    validateLoanAmount(loanAmount);
  } on LoanAmountException catch (e,st) {
    print(e.error);
    print(st);
  }
}

class AppException implements Exception {
  const AppException(this.error);

  final String error;
}

class LoanAmountException extends AppException {
  const LoanAmountException() : super('Loan Amount cant be Less Than 5K.');
}
