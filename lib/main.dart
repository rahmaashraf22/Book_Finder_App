import 'package:book_finder_app/app/core/routing/app_router.dart';
import 'package:book_finder_app/app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BookFinderApp());
}

class BookFinderApp extends StatelessWidget {
  const BookFinderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter().onGenerateRoute,
      title: 'Book Finder App',
      theme: AppTheme.darkTheme,
    );
  }
}
