import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = 'https://www.googleapis.com/auth/books';

  final String apiKey = 'AIzaSyD1YLK4hrBxin4orqEXzzTIBDaMvT9n8Bk';
  Future<http.Response> getBooks() async {
    final response = await http.get((Uri.parse('$baseUrl/books?key=$apiKey')));
    return response;
  }

}

// https://www.googleapis.com/auth/books
