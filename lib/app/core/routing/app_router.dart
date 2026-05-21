import 'package:book_finder_app/features/discover_books/presentation/view/pages/discover_book_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
    }
    return null;
  }
}
