import 'package:book_finder_app/app/core/constants/app_constants.dart';
import 'package:book_finder_app/app/core/routing/app_router.dart';
import 'package:book_finder_app/app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  runApp(BookFinderApp());
}

class BookFinderApp extends StatelessWidget {
  const BookFinderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter().onGenerateRoute,
      title: AppConstants.appName,
      theme: AppTheme.lightTheme,
    );
  }
}
