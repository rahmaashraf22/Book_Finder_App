import 'package:book_finder_app/app/core/api_mnager/api_service.dart';
import 'package:book_finder_app/app/core/network/base_response.dart';
import 'package:book_finder_app/app/core/network/safe_api_call.dart';
import 'package:book_finder_app/features/find_books/data/data_source/find_books_remote_datasource.dart';
import 'package:book_finder_app/features/find_books/data/models/books_model.dart';

class FindBooksRemoteDatasourceImpl implements FindBooksRemoteDatasource {
  final ApiService _apiService;

  FindBooksRemoteDatasourceImpl(this._apiService);

  @override
  Future<BaseResponse<List<BooksModel>>> getBooks() {
    return safeApiCall(call: () => _apiService.getBooks());
  }
}
