import 'dart:convert';
import 'dart:io';

void main() {
  // Sample JSON data (replace with your JSON object)
  var jsonData = {
    "hospital": "Indraprastha Apollo Hospitals, New Delhi",
    "doctor": "4",
    "specialty": "UROLOGY",
    "date_of_appointment": "2024-07-24",
    "passport_no": "A08399220",
    "patient_name": "MRS TAHMINASERES BEGUM",
    "embassy": "1",
    "passport": "@/path/to/file", // Replace with actual file path
    "nationality": "Bangladesh",
    "attendants": [
      {
        "name": "MRS TAHMINASERES BEGUM",
        "passport_no": "A08399220",
        "embassy": "2",
        "nationality": "Attender - 1"
      }
    ],
    "attendant_passports": [
      "@/path/to/file1" // Replace with actual file paths
    ]
  };

  // Convert JSON to cURL command for form data
  var curlCommand = jsonToCurlFormData(jsonData, 'http://your_endpoint_url');
  print(curlCommand);
}

// Function to convert JSON to cURL command for form data
String jsonToCurlFormData(Map<String, dynamic> json, String url) {
  var curlCommand = 'curl --location \'$url\'';

  json.forEach((key, value) {
    if (value is String && value.startsWith("@")) {
      curlCommand += ' --form \'$key=$value\'';
    } else if (value is List) {
      
      if (key == 'attendants') {
        // Handling for 'attendants' array of objects
        for (var i = 0; i < value.length; i++) {
          var listItem = value[i];
          var jsonValue = jsonEncode(listItem).replaceAll('"', '\\"');
          curlCommand += ' --form \'$key[$i]=$jsonValue\'';
        }
      } else if (key == 'attendant_passports') {
        // Handling for 'attendant_passports' array of file paths
        for (var i = 0; i < value.length; i++) {
          curlCommand += ' --form \'$key[$i]=$value[$i]\'';
        }
      } else {
        // Generic list handling (not expected in this sample)
        for (var i = 0; i < value.length; i++) {
          curlCommand += ' --form \'$key[$i]=$value[$i]\'';
        }
      }
    } else {
      curlCommand += ' --form \'$key="$value"\'';
    }
  });

  return curlCommand;
}
