import 'tuples_util.dart';

extension IsNullExtension on Object? {
  bool get isNull => this == null;
}

void main(List<String> args) {
  const url =
      "https://redirect.ezfinanz.com?uri=ezfapp://ezlos/https://paytest.ezfinanz.com/pay/8688662378";
  final uri = Uri.dataFromString(url);
  final params = uri.queryParameters;
  if (params.containsKey('uri')) {
    final losURIStr = params['uri']!;
    final startIndx = losURIStr.indexOf('https://');
    if (startIndx != -1) {
      final mainLosURL = losURIStr.substring(startIndx);
      final lastParam = mainLosURL.split('/').last;
      print(lastParam);
    }
  }

  const isApproved = true;
  const isRejected = false;
  final va = isRejected || isApproved;
  print(va);


  const loanAmt = 7667.0;
  const eligibleAmt = 7666.67;
  print(loanAmt.round());
  print('7666.67 : ${7666.67.round()}');
  print('7666.47 : ${7666.47.round()}');
  print(loanAmt.round().compareTo(eligibleAmt.round()));

  print('------');
  checkAnything(Triple('Sai', 'Two', 'Third'));

     const String _baseUrl = 'https://ezf-ob-dev.ezfinanz.com/erp';
     print(Uri.parse(_baseUrl).authority.split('.').first);
     const checks = ['ezf-ob-dev.ezfinanz','ezf-ob-staging.ezfinanz'];
     print(checks.contains(_baseUrl));

}

void checkAnything<P>(P params) => print(params);
