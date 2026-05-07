import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

import 'package:book_finder_app/features/find_books/data/data_source/find_books_remote_datasource.dart';
import 'package:book_finder_app/features/find_books/data/models/books_model.dart';
import 'package:book_finder_app/features/find_books/domain/repos/books_repo.dart';

class BooksRepoImpl implements BooksRepo {
  final FindBooksRemoteDatasource _remoteDatasource;

  BooksRepoImpl(this._remoteDatasource);

  @override
  Future<List<BooksModel>> getBooks() {
    return _remoteDatasource.getBooks().then((data) {
      List<BooksModel> books = data.call().toList();
      return books;
    });
  }
}
