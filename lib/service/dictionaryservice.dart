import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
import 'package:apidictionary/contants/appconstants.dart';

class Dictionaryservice {
  Future<void> getdata(String word) async {
    String url = "${Appconstants.baseurl}$word?${Appconstants.apikey}";
    print(url);
    // Await the http get response,
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);

      print(jsonResponse);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }
}
