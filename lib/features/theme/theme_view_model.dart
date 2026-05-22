import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:book_finder_app/app/core/theme/app_theme.dart';

part 'theme_state.dart';

enum AppThemeMode { light, dark, amoled }

@injectable
class ThemeViewModel extends Cubit<ThemeState> {
  ThemeViewModel()
    : super(ThemeState(
        themeMode: AppThemeMode.light,
        themeData: AppTheme.lightTheme,
      ));

  void changeTheme(AppThemeMode themeMode) {
    final ThemeData themeData;
    switch (themeMode) {
      case AppThemeMode.light:
        themeData = AppTheme.lightTheme;
        break;
      case AppThemeMode.dark:
        themeData = AppTheme.darkTheme;
        break;
      case AppThemeMode.amoled:
        themeData = AppTheme.amoledTheme;
        break;
    }
    emit(ThemeState(themeMode: themeMode, themeData: themeData));
  }
}
