import 'package:book_finder_app/core/api_mnager/api_service.dart';
import 'package:book_finder_app/features/find_books/data/data_source/find_books_remote_datasource.dart';

class FindBooksRemoteDatasourceImpl implements FindBooksRemoteDatasource {
  ApiService _apiService;

  FindBooksRemoteDatasourceImpl(this._apiService);

  @override
  Future<List<dynamic>> getBooks() {
    // TODO: implement getBooks
    throw UnimplementedError();
  }

}