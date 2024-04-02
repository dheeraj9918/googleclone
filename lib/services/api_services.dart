import 'package:google_search_clone/config/api_json.dart';
import 'package:google_search_clone/config/api_key.dart';
import 'package:http/http.dart ' as http;
import 'dart:convert';

class ApiService {
  bool isDummyData = true;
  Future<Map<String, dynamic>> fetchData(
      {required String queryTerm, String start = '0'}) async {
    try {
      if (!isDummyData) {
        final String q = queryTerm.contains(' ')
            ? queryTerm.split(' ').join("%20")
            : queryTerm;
        final response = await http.get(
          Uri.parse(
              'https://www.googleapis.com/customsearch/v1?key=$googleApiKey&cx=$contextKey&q=$q&start=$start'),
        );
        if (response.statusCode == 200) {
          final jsonData = response.body;
          final respData = json.decode(jsonData);
          return respData;
        }
      }
    } catch (e) {
      print(
        e.toString(),
      );
    }
    return apiResponse;
  }
}
