import 'package:book_finder_app/features/discover_books/presentation/view_model/discover_book_cubit.dart';

sealed class FndBookIntent {}

class GetAllBooks extends FndBookIntent {}
