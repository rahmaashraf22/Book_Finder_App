import 'package:book_finder_app/features/find_books/data/data_source/find_books_remote_datasource.dart';
import 'package:book_finder_app/features/find_books/data/models/books_model.dart';
import 'package:book_finder_app/features/find_books/domain/repos/books_repo.dart';

class BooksRepoImpl implements BooksRepo {
  FindBooksRemoteDatasource _remoteDatasource;

  BooksRepoImpl(this._remoteDatasource);
  Future<List<BooksModel>> getBooks() {
return _remoteDatasource.getBooks().then((data) {
      // Convert the raw data to a list of BooksModel
      return data.map((item) => BooksModel.fromJson(item)).toList();
    }).catchError((error) {
      // Handle any errors that occur during the API call
      throw Exception('Failed to load books: $error');
    });
  }
}
