import 'dart:convert';

String generateCurlCommand(Map<String, dynamic> jsonData) {
  StringBuffer curlCommand =
      StringBuffer('curl -X POST https://your-api-endpoint.com');

  jsonData.forEach((key, value) {
    if (value is String && value.startsWith('File:')) {
      String filePath = value.replaceFirst('File: ', '');
      curlCommand.write(' -F "$key=@$filePath"');
    } else if (key == 'attendants') {
      String attendantsJson = jsonEncode(value);
      curlCommand.write(' -F "$key=$attendantsJson"');
    } else {
      curlCommand.write(' -F "$key=$value"');
    }
  });

  return curlCommand.toString();
}

void main() {
  Map<String, dynamic> jsonData = {
    "hospital": "Indraprastha Apollo Hospitals, New Delhi",
    "doctor": 504,
    "specialty": "ONCOLOGY",
    "date_of_appointment": "2024-07-10",
    "passport_no": "N0885237",
    "patient_name": "Nita J. Silva",
    "embassy": 3,
    "passport":
        "File: /data/user/0/in.easycloud.medisupport/cache/file_picker/1720414526034/Aus_Pat_Pass.png",
    "nationality": "Australia",
    "attendants": [
      {
        "name": "JANECITIZEN",
        "passport_no": "PA0940443",
        "embassy": 1,
        "nationality": "Australia"
      },
      {
        "name": "BEAN P",
        "passport_no": "023477812",
        "embassy": 2,
        "nationality": "Australia"
      }
    ],
    "attendant1_passport":
        "File: /data/user/0/in.easycloud.medisupport/cache/file_picker/1720414688258/Figure-6.png",
    "attendant2_passport":
        "File: /data/user/0/in.easycloud.medisupport/cache/file_picker/1720414773487/DSh8T0XX4AAChj_.jpg"
  };

  String curlCommand = generateCurlCommand(jsonData);
  print(curlCommand);
}
