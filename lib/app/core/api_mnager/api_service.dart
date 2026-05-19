import 'package:book_finder_app/app/core/constants/app_constants.dart';
import 'package:http/http.dart' as http;

class ApiService {
  // final String baseUrl = '';

  // final String apiKey = '';
  Future<http.Response> getBooks() async {
    final response = await http.get((Uri.parse(AppConstants.apiBaseUrl)));
    return response;
  }
}
