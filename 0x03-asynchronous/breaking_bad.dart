import 'dart:convert';

import 'package:http/http.dart' as http;

Future<void> printBbCharacters() async {
  try {
    var url = Uri.parse('https://www.breakingbadapi.com/api/characters');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      for (var char in jsonDecode(response.body)) {
        print(char?['name']);
      }
    }
  } catch (e) {
    print('error caught: $e');
  }
}
