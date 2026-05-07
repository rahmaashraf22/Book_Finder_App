import 'package:book_finder_app/features/find_books/data/models/books_model.dart';

abstract class BooksRepo {
  Future<List<BooksModel>> getBooks();
}