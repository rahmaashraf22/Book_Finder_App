import 'package:book_finder_app/features/discover_books/presentation/view/pages/discover_book_page.dart';
import 'package:book_finder_app/features/home/enums/home_enum.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.currAppTab});

  final NavBarEnum currAppTab;

  @override
  Widget build(BuildContext context) {
    switch (currAppTab) {
      case NavBarEnum.home:
        return const DiscoverBookPage();
      case NavBarEnum.search:
        return const DiscoverBookPage();
      case NavBarEnum.reading:
        return const DiscoverBookPage();
      case NavBarEnum.tracker:
        return const DiscoverBookPage();
      case NavBarEnum.profile:
        return const DiscoverBookPage();
    }
  }
}