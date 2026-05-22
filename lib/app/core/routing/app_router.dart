import 'package:book_finder_app/features/discover_books/presentation/view/pages/discover_book_page.dart';
import 'package:book_finder_app/features/home/enums/home_enum.dart';
import 'package:book_finder_app/features/home/view/home_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(currAppTab: NavBarEnum.home),
        );
    }
    return null;
  }
}
