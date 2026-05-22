part of 'theme_view_model.dart';

class ThemeState {
  final AppThemeMode themeMode;
  final ThemeData themeData;

  ThemeState({required this.themeMode, required this.themeData});

  ThemeState copyWith({AppThemeMode? themeMode, ThemeData? themeData}) {
    return ThemeState(
      themeMode: themeMode ?? this.themeMode,
      themeData: themeData ?? this.themeData,
    );
  }
}