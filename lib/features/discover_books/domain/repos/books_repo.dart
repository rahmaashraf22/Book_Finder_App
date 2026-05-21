import 'package:book_finder_app/features/discover_books/data/models/books_model.dart';

abstract class BooksRepo {
  Future<List<BooksModel>> getBooks();
}
