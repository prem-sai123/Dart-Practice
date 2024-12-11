void main(List<String> args) {
  final preEnquiryDetails = {'id': 1, '_entityName': 'LDS_PreenquiryForm'};
  final enquiryDetails = {'id': 1, '_entityName': 'LDS_enquiryForm'};
  final bankUpdationBody = {'verifiedBankAccountId': 123, 'bankname': 'SBI'};
  print({...preEnquiryDetails, ...bankUpdationBody});
  print({...enquiryDetails, ...bankUpdationBody});

  // preEnquiryDetails.addAll(bankUpdationBody);
  // enquiryDetails.addAll(bankUpdationBody);
  // print(preEnquiryDetails);
  // print(enquiryDetails);

  print('------');
  bankUpdationBody.forEach((key, value) {
    enquiryDetails.putIfAbsent(key, () => value);
    preEnquiryDetails.putIfAbsent(key, () => value);
  });

  print(preEnquiryDetails);
  print(enquiryDetails);
}
