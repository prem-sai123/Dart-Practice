// Write a program that asks the user how many Fibonnaci numbers to generate and then generates them. 
// Take this opportunity to think about how you can use functions.

import 'dart:convert';

void main(List<String> args) {
  final ticketIds = ['ASDF','ASDE','POIU','87654','4re33'];
   final reqBody = json.encode({
      "data": [
        ...ticketIds.map(
          (e) => {
            '_entityName': 'TMS_Taskmanagement',
            'id': e,
          },
        ),
      ]
    });
    print(reqBody);
}