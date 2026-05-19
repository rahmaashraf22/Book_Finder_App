import 'package:book_finder_app/core/constants/app_constants.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<http.Response> getBooks() async {
    final response = await http.get((Uri.parse(AppConstants.apiBaseUrl)));
    return response;
  }
}
