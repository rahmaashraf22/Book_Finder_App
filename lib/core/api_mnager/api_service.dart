import 'package:http/http.dart' as http;
import 'dart:convert';


class ApiService {
  final String baseUrl = 'https://www.googleapis.com/auth/books';
  
  Future<List<dynamic>> getBooks() async {
    final response = await http.get((Uri.parse('$baseUrl/books')));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data['items'];
    } else {
      throw Exception('Failed to load books: ${response.statusCode}');
    }
  }

  
}
