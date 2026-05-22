import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookloomThemeExtension extends ThemeExtension<BookloomThemeExtension> {
  final Color surfaceElevated;
  final Color backgroundSecondary;
  final Color border;
  final Color divider;
  final Color input;
  final Color inputBackground;
  final Color switchBackground;
  final Color glowColor;
  final Color success;
  final Color warning;
  final Color error;
  final Color info;
  final Color chart1;
  final Color chart2;
  final Color chart3;
  final Color chart4;
  final Color chart5;

  const BookloomThemeExtension({
    required this.surfaceElevated,
    required this.backgroundSecondary,
    required this.border,
    required this.divider,
    required this.input,
    required this.inputBackground,
    required this.switchBackground,
    required this.glowColor,
    required this.success,
    required this.warning,
    required this.error,
    required this.info,
    required this.chart1,
    required this.chart2,
    required this.chart3,
    required this.chart4,
    required this.chart5,
  });

  @override
  BookloomThemeExtension copyWith({
    Color? surfaceElevated,
    Color? backgroundSecondary,
    Color? border,
    Color? divider,
    Color? input,
    Color? inputBackground,
    Color? switchBackground,
    Color? glowColor,
    Color? success,
    Color? warning,
    Color? error,
    Color? info,
    Color? chart1,
    Color? chart2,
    Color? chart3,
    Color? chart4,
    Color? chart5,
  }) {
    return BookloomThemeExtension(
      surfaceElevated: surfaceElevated ?? this.surfaceElevated,
      backgroundSecondary: backgroundSecondary ?? this.backgroundSecondary,
      border: border ?? this.border,
      divider: divider ?? this.divider,
      input: input ?? this.input,
      inputBackground: inputBackground ?? this.inputBackground,
      switchBackground: switchBackground ?? this.switchBackground,
      glowColor: glowColor ?? this.glowColor,
      success: success ?? this.success,
      warning: warning ?? this.warning,
      error: error ?? this.error,
      info: info ?? this.info,
      chart1: chart1 ?? this.chart1,
      chart2: chart2 ?? this.chart2,
      chart3: chart3 ?? this.chart3,
      chart4: chart4 ?? this.chart4,
      chart5: chart5 ?? this.chart5,
    );
  }

  @override
  BookloomThemeExtension lerp(
    ThemeExtension<BookloomThemeExtension>? other,
    double t,
  ) {
    if (other is! BookloomThemeExtension) {
      return this;
    }
    return BookloomThemeExtension(
      surfaceElevated: Color.lerp(surfaceElevated, other.surfaceElevated, t)!,
      backgroundSecondary: Color.lerp(
        backgroundSecondary,
        other.backgroundSecondary,
        t,
      )!,
      border: Color.lerp(border, other.border, t)!,
      divider: Color.lerp(divider, other.divider, t)!,
      input: Color.lerp(input, other.input, t)!,
      inputBackground: Color.lerp(inputBackground, other.inputBackground, t)!,
      switchBackground: Color.lerp(
        switchBackground,
        other.switchBackground,
        t,
      )!,
      glowColor: Color.lerp(glowColor, other.glowColor, t)!,
      success: Color.lerp(success, other.success, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      error: Color.lerp(error, other.error, t)!,
      info: Color.lerp(info, other.info, t)!,
      chart1: Color.lerp(chart1, other.chart1, t)!,
      chart2: Color.lerp(chart2, other.chart2, t)!,
      chart3: Color.lerp(chart3, other.chart3, t)!,
      chart4: Color.lerp(chart4, other.chart4, t)!,
      chart5: Color.lerp(chart5, other.chart5, t)!,
    );
  }
}

extension BookloomThemeGetter on BuildContext {
  BookloomThemeExtension get bookloomTheme =>
      Theme.of(this).extension<BookloomThemeExtension>()!;
}

class AppTheme {
  // Legacy fields for backward compatibility
  static Color blue = Colors.blue;
  static Color white = Colors.white;
  static Color black = Colors.black;
  static Color darkBlue = const Color(0xff121A21);

  // Border Radius Design Tokens
  static const double radiusSm = 6.0;
  static const double radiusMd = 8.0;
  static const double radiusLg = 12.0;
  static const double radiusXl = 16.0;
  static const double radius2xl = 24.0;
  static const double radiusFull = 9999.0;
  static const double radius = 12.0;

  // Spacing Design Tokens (8pt Grid)
  static const double space1 = 4.0;
  static const double space2 = 8.0;
  static const double space3 = 12.0;
  static const double space4 = 16.0;
  static const double space5 = 20.0;
  static const double space6 = 24.0;
  static const double space8 = 32.0;
  static const double space10 = 40.0;
  static const double space12 = 48.0;
  static const double space16 = 64.0;

  // --- LIGHT THEME (Warm, Cozy Café) ---
  static const Color lightPrimary = Color(0xFF2C1810);
  static const Color lightOnPrimary = Color(0xFFFAF8F5);
  static const Color lightSecondary = Color(0xFFD4A574);
  static const Color lightOnSecondary = Color(0xFF2C1810);
  static const Color lightAccent = Color(0xFFE8C39E);
  static const Color lightOnAccent = Color(0xFF2C1810);
  static const Color lightBackground = Color(0xFFFAF8F5);
  static const Color lightBackgroundSecondary = Color(0xFFF5F1EC);
  static const Color lightSurface = Color(0xFFFFFFFF);
  static const Color lightSurfaceElevated = Color(0xFFFFFFFF);
  static const Color lightCard = Color(0xFFFFFFFF);
  static const Color lightCardForeground = Color(0xFF2C1810);
  static const Color lightTextPrimary = Color(0xFF2C1810);
  static const Color lightTextSecondary = Color(0xFF6B5D52);
  static const Color lightTextTertiary = Color(0xFF8F7E6F);
  static const Color lightBorder = Color(0x142C1810); // rgba(44, 24, 16, 0.08)
  static const Color lightDivider = Color(0x0F2C1810); // rgba(44, 24, 16, 0.06)
  static const Color lightInput = Color(0x142C1810);
  static const Color lightInputBackground = Color(0xFFF5F1EC);
  static const Color lightRing = Color(0xFFD4A574);
  static const Color lightSuccess = Color(0xFF5F8D4E);
  static const Color lightWarning = Color(0xFFE6A23C);
  static const Color lightError = Color(0xFFC73E3A);
  static const Color lightInfo = Color(0xFF5B8C9D);
  static const Color lightSwitchBackground = Color(0xFFD9CEC1);
  static const Color lightGlowColor = Color(
    0x26D4A574,
  ); // rgba(212, 165, 116, 0.15)
  static const Color lightChart1 = Color(0xFFD4A574);
  static const Color lightChart2 = Color(0xFF5F8D4E);
  static const Color lightChart3 = Color(0xFF5B8C9D);
  static const Color lightChart4 = Color(0xFFC78D6C);
  static const Color lightChart5 = Color(0xFF8B7355);

  // --- DARK THEME (Cinematic Night) ---
  static const Color darkPrimary = Color(0xFFF5E6D3);
  static const Color darkOnPrimary = Color(0xFF1A1512);
  static const Color darkSecondary = Color(0xFFD4A574);
  static const Color darkOnSecondary = Color(0xFF1A1512);
  static const Color darkAccent = Color(0xFFE8C39E);
  static const Color darkOnAccent = Color(0xFF1A1512);
  static const Color darkBackground = Color(0xFF1A1512);
  static const Color darkBackgroundSecondary = Color(0xFF221C18);
  static const Color darkSurface = Color(0xFF221C18);
  static const Color darkSurfaceElevated = Color(0xFF2C2520);
  static const Color darkCard = Color(0xFF221C18);
  static const Color darkCardForeground = Color(0xFFE8DED1);
  static const Color darkTextPrimary = Color(0xFFE8DED1);
  static const Color darkTextSecondary = Color(0xFFB8AFA4);
  static const Color darkTextTertiary = Color(0xFF8F8679);
  static const Color darkBorder = Color(
    0x1FE8C39E,
  ); // rgba(232, 195, 158, 0.12)
  static const Color darkDivider = Color(
    0x14E8C39E,
  ); // rgba(232, 195, 158, 0.08)
  static const Color darkInput = Color(0x1FE8C39E);
  static const Color darkInputBackground = Color(0xFF2C2520);
  static const Color darkRing = Color(0xFFE8C39E);
  static const Color darkSuccess = Color(0xFF6BA551);
  static const Color darkWarning = Color(0xFFE6A23C);
  static const Color darkError = Color(0xFFE05D5D);
  static const Color darkInfo = Color(0xFF6DA3B8);
  static const Color darkSwitchBackground = Color(0xFF3D3530);
  static const Color darkGlowColor = Color(
    0x14E8C39E,
  ); // rgba(232, 195, 158, 0.08)
  static const Color darkChart1 = Color(0xFFE8C39E);
  static const Color darkChart2 = Color(0xFF6BA551);
  static const Color darkChart3 = Color(0xFF6DA3B8);
  static const Color darkChart4 = Color(0xFFD4A574);
  static const Color darkChart5 = Color(0xFFB8967D);

  // --- AMOLED THEME (Pure Black contrast) ---
  static const Color amoledPrimary = Color(0xFFF5E6D3);
  static const Color amoledOnPrimary = Color(0xFF000000);
  static const Color amoledSecondary = Color(0xFFD4A574);
  static const Color amoledOnSecondary = Color(0xFF000000);
  static const Color amoledAccent = Color(0xFFE8C39E);
  static const Color amoledOnAccent = Color(0xFF000000);
  static const Color amoledBackground = Color(0xFF000000);
  static const Color amoledBackgroundSecondary = Color(0xFF0A0806);
  static const Color amoledSurface = Color(0xFF0A0806);
  static const Color amoledSurfaceElevated = Color(0xFF14100D);
  static const Color amoledCard = Color(0xFF0A0806);
  static const Color amoledCardForeground = Color(0xFFE8DED1);
  static const Color amoledTextPrimary = Color(0xFFFFFBF5);
  static const Color amoledTextSecondary = Color(0xFFC9C0B5);
  static const Color amoledTextTertiary = Color(0xFF9A9289);
  static const Color amoledBorder = Color(
    0x26E8C39E,
  ); // rgba(232, 195, 158, 0.15)
  static const Color amoledDivider = Color(
    0x1AE8C39E,
  ); // rgba(232, 195, 158, 0.1)
  static const Color amoledInput = Color(0x26E8C39E);
  static const Color amoledInputBackground = Color(0xFF14100D);
  static const Color amoledRing = Color(0xFFE8C39E);
  static const Color amoledSuccess = Color(0xFF7DBE67);
  static const Color amoledWarning = Color(0xFFF2B84F);
  static const Color amoledError = Color(0xFFFF6B6B);
  static const Color amoledInfo = Color(0xFF7DB8CE);
  static const Color amoledSwitchBackground = Color(0xFF2C2520);
  static const Color amoledGlowColor = Color(
    0x1EE8C39E,
  ); // rgba(232, 195, 158, 0.12)
  static const Color amoledChart1 = Color(0xFFE8C39E);
  static const Color amoledChart2 = Color(0xFF7DBE67);
  static const Color amoledChart3 = Color(0xFF7DB8CE);
  static const Color amoledChart4 = Color(0xFFF2B84F);
  static const Color amoledChart5 = Color(0xFFD4A574);

  static TextTheme _buildTextTheme({
    required Color primaryColor,
    required Color secondaryColor,
    required Color tertiaryColor,
  }) {
    return TextTheme(
      headlineLarge: GoogleFonts.crimsonPro(
        fontSize: 30,
        fontWeight: FontWeight.w600,
        color: primaryColor,
        height: 1.2,
      ),
      headlineMedium: GoogleFonts.crimsonPro(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: primaryColor,
        height: 1.3,
      ),
      headlineSmall: GoogleFonts.crimsonPro(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: primaryColor,
        height: 1.4,
      ),
      titleLarge: GoogleFonts.crimsonPro(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: primaryColor,
        height: 1.4,
      ),
      titleMedium: GoogleFonts.crimsonPro(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: primaryColor,
        height: 1.5,
      ),
      titleSmall: GoogleFonts.crimsonPro(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: secondaryColor,
        height: 1.5,
      ),
      bodyLarge: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: primaryColor,
        height: 1.6,
      ),
      bodyMedium: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: secondaryColor,
        height: 1.6,
      ),
      bodySmall: GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: tertiaryColor,
        height: 1.6,
      ),
      labelLarge: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: primaryColor,
        height: 1.5,
      ),
      labelMedium: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: secondaryColor,
        height: 1.5,
      ),
      labelSmall: GoogleFonts.inter(
        fontSize: 11,
        fontWeight: FontWeight.w500,
        color: tertiaryColor,
        height: 1.5,
      ),
    );
  }

  static CardThemeData _buildCardTheme({
    required Color cardBg,
    required Color shadowColor,
  }) {
    return CardThemeData(
      color: cardBg,
      elevation: 4,
      shadowColor: shadowColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radiusLg),
      ),
    );
  }

  static AppBarTheme _buildAppBarTheme({
    required Color background,
    required Color foreground,
  }) {
    return AppBarTheme(
      backgroundColor: background,
      foregroundColor: foreground,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: GoogleFonts.crimsonPro(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: foreground,
      ),
      iconTheme: IconThemeData(color: foreground),
    );
  }

  static BottomNavigationBarThemeData _buildBottomNavBarTheme({
    required Color background,
    required Color selectedItemColor,
    required Color unselectedItemColor,
  }) {
    return BottomNavigationBarThemeData(
      backgroundColor: background,
      selectedItemColor: selectedItemColor,
      unselectedItemColor: unselectedItemColor,
      type: BottomNavigationBarType.fixed,
      elevation: 8,
      selectedLabelStyle: GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      unselectedLabelStyle: GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  static InputDecorationTheme _buildInputDecorationTheme({
    required Color fillColor,
    required Color borderColor,
    required Color focusColor,
    required Color errorColor,
    required Color textColor,
    required Color hintColor,
  }) {
    return InputDecorationTheme(
      filled: true,
      fillColor: fillColor,
      hintStyle: GoogleFonts.inter(
        color: hintColor,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      labelStyle: GoogleFonts.inter(
        color: textColor.withOpacity(0.8),
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: space4,
        vertical: space3,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radiusLg),
        borderSide: BorderSide(color: borderColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radiusLg),
        borderSide: BorderSide(color: borderColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radiusLg),
        borderSide: BorderSide(color: focusColor, width: 2.0),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radiusLg),
        borderSide: BorderSide(color: errorColor),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radiusLg),
        borderSide: BorderSide(color: errorColor, width: 2.0),
      ),
    );
  }

  static DividerThemeData _buildDividerTheme({required Color color}) {
    return DividerThemeData(color: color, thickness: 1.0, space: space4);
  }

  static SwitchThemeData _buildSwitchTheme({
    required Color activeThumbColor,
    required Color activeTrackColor,
    required Color inactiveThumbColor,
    required Color inactiveTrackColor,
  }) {
    return SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith<Color?>((states) {
        if (states.contains(MaterialState.selected)) {
          return activeThumbColor;
        }
        return inactiveThumbColor;
      }),
      trackColor: MaterialStateProperty.resolveWith<Color?>((states) {
        if (states.contains(MaterialState.selected)) {
          return activeTrackColor;
        }
        return inactiveTrackColor;
      }),
    );
  }

  static ElevatedButtonThemeData _buildElevatedButtonTheme({
    required Color bg,
    required Color fg,
  }) {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: bg,
        foregroundColor: fg,
        elevation: 2,
        shadowColor: bg.withOpacity(0.3),
        padding: const EdgeInsets.symmetric(
          horizontal: space6,
          vertical: space3,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusLg),
        ),
        textStyle: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w500),
      ),
    );
  }

  static OutlinedButtonThemeData _buildOutlinedButtonTheme({
    required Color borderCol,
    required Color textCol,
  }) {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: textCol,
        side: BorderSide(color: borderCol, width: 1.5),
        padding: const EdgeInsets.symmetric(
          horizontal: space6,
          vertical: space3,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusLg),
        ),
        textStyle: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w500),
      ),
    );
  }

  static TextButtonThemeData _buildTextButtonTheme({required Color textCol}) {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: textCol,
        padding: const EdgeInsets.symmetric(
          horizontal: space4,
          vertical: space2,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusMd),
        ),
        textStyle: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w500),
      ),
    );
  }

  // --- THEME DATA ACCESSORS ---

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: lightPrimary,
      scaffoldBackgroundColor: lightBackground,
      colorScheme: const ColorScheme.light(
        primary: lightPrimary,
        onPrimary: lightOnPrimary,
        secondary: lightSecondary,
        onSecondary: lightOnSecondary,
        tertiary: lightAccent,
        onTertiary: lightOnAccent,
        background: lightBackground,
        onBackground: lightTextPrimary,
        surface: lightSurface,
        onSurface: lightTextPrimary,
        error: lightError,
        onError: Colors.white,
      ),
      textTheme: _buildTextTheme(
        primaryColor: lightTextPrimary,
        secondaryColor: lightTextSecondary,
        tertiaryColor: lightTextTertiary,
      ),
      cardTheme: _buildCardTheme(
        cardBg: lightCard,
        shadowColor: lightGlowColor.withOpacity(0.3),
      ),
      appBarTheme: _buildAppBarTheme(
        background: lightBackground,
        foreground: lightTextPrimary,
      ),
      bottomNavigationBarTheme: _buildBottomNavBarTheme(
        background: lightBackgroundSecondary,
        selectedItemColor: lightPrimary,
        unselectedItemColor: lightTextTertiary,
      ),
      inputDecorationTheme: _buildInputDecorationTheme(
        fillColor: lightInputBackground,
        borderColor: lightBorder,
        focusColor: lightRing,
        errorColor: lightError,
        textColor: lightTextPrimary,
        hintColor: lightTextTertiary,
      ),
      dividerTheme: _buildDividerTheme(color: lightDivider),
      switchTheme: _buildSwitchTheme(
        activeThumbColor: lightSecondary,
        activeTrackColor: lightSecondary.withOpacity(0.5),
        inactiveThumbColor: lightTextTertiary,
        inactiveTrackColor: lightSwitchBackground,
      ),
      elevatedButtonTheme: _buildElevatedButtonTheme(
        bg: lightPrimary,
        fg: lightOnPrimary,
      ),
      outlinedButtonTheme: _buildOutlinedButtonTheme(
        borderCol: lightBorder,
        textCol: lightPrimary,
      ),
      textButtonTheme: _buildTextButtonTheme(textCol: lightPrimary),
      extensions: const [
        BookloomThemeExtension(
          surfaceElevated: lightSurfaceElevated,
          backgroundSecondary: lightBackgroundSecondary,
          border: lightBorder,
          divider: lightDivider,
          input: lightInput,
          inputBackground: lightInputBackground,
          switchBackground: lightSwitchBackground,
          glowColor: lightGlowColor,
          success: lightSuccess,
          warning: lightWarning,
          error: lightError,
          info: lightInfo,
          chart1: lightChart1,
          chart2: lightChart2,
          chart3: lightChart3,
          chart4: lightChart4,
          chart5: lightChart5,
        ),
      ],
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: darkPrimary,
      scaffoldBackgroundColor: darkBackground,
      colorScheme: const ColorScheme.dark(
        primary: darkPrimary,
        onPrimary: darkOnPrimary,
        secondary: darkSecondary,
        onSecondary: darkOnSecondary,
        tertiary: darkAccent,
        onTertiary: darkOnAccent,
        background: darkBackground,
        onBackground: darkTextPrimary,
        surface: darkSurface,
        onSurface: darkTextPrimary,
        error: darkError,
        onError: darkOnPrimary,
      ),
      textTheme: _buildTextTheme(
        primaryColor: darkTextPrimary,
        secondaryColor: darkTextSecondary,
        tertiaryColor: darkTextTertiary,
      ),
      cardTheme: _buildCardTheme(
        cardBg: darkCard,
        shadowColor: Colors.black.withOpacity(0.4),
      ),
      appBarTheme: _buildAppBarTheme(
        background: darkBackground,
        foreground: darkTextPrimary,
      ),
      bottomNavigationBarTheme: _buildBottomNavBarTheme(
        background: darkBackgroundSecondary,
        selectedItemColor: darkSecondary,
        unselectedItemColor: darkTextTertiary,
      ),
      inputDecorationTheme: _buildInputDecorationTheme(
        fillColor: darkInputBackground,
        borderColor: darkBorder,
        focusColor: darkRing,
        errorColor: darkError,
        textColor: darkTextPrimary,
        hintColor: darkTextTertiary,
      ),
      dividerTheme: _buildDividerTheme(color: darkDivider),
      switchTheme: _buildSwitchTheme(
        activeThumbColor: darkSecondary,
        activeTrackColor: darkSecondary.withOpacity(0.5),
        inactiveThumbColor: darkTextTertiary,
        inactiveTrackColor: darkSwitchBackground,
      ),
      elevatedButtonTheme: _buildElevatedButtonTheme(
        bg: darkPrimary,
        fg: darkOnPrimary,
      ),
      outlinedButtonTheme: _buildOutlinedButtonTheme(
        borderCol: darkBorder,
        textCol: darkPrimary,
      ),
      textButtonTheme: _buildTextButtonTheme(textCol: darkPrimary),
      extensions: const [
        BookloomThemeExtension(
          surfaceElevated: darkSurfaceElevated,
          backgroundSecondary: darkBackgroundSecondary,
          border: darkBorder,
          divider: darkDivider,
          input: darkInput,
          inputBackground: darkInputBackground,
          switchBackground: darkSwitchBackground,
          glowColor: darkGlowColor,
          success: darkSuccess,
          warning: darkWarning,
          error: darkError,
          info: darkInfo,
          chart1: darkChart1,
          chart2: darkChart2,
          chart3: darkChart3,
          chart4: darkChart4,
          chart5: darkChart5,
        ),
      ],
    );
  }

  static ThemeData get amoledTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: amoledPrimary,
      scaffoldBackgroundColor: amoledBackground,
      colorScheme: const ColorScheme.dark(
        primary: amoledPrimary,
        onPrimary: amoledOnPrimary,
        secondary: amoledSecondary,
        onSecondary: amoledOnSecondary,
        tertiary: amoledAccent,
        onTertiary: amoledOnAccent,
        background: amoledBackground,
        onBackground: amoledTextPrimary,
        surface: amoledSurface,
        onSurface: amoledTextPrimary,
        error: amoledError,
        onError: amoledOnPrimary,
      ),
      textTheme: _buildTextTheme(
        primaryColor: amoledTextPrimary,
        secondaryColor: amoledTextSecondary,
        tertiaryColor: amoledTextTertiary,
      ),
      cardTheme: _buildCardTheme(
        cardBg: amoledCard,
        shadowColor: Colors.black.withOpacity(0.8),
      ),
      appBarTheme: _buildAppBarTheme(
        background: amoledBackground,
        foreground: amoledTextPrimary,
      ),
      bottomNavigationBarTheme: _buildBottomNavBarTheme(
        background: amoledBackgroundSecondary,
        selectedItemColor: amoledSecondary,
        unselectedItemColor: amoledTextTertiary,
      ),
      inputDecorationTheme: _buildInputDecorationTheme(
        fillColor: amoledInputBackground,
        borderColor: amoledBorder,
        focusColor: amoledRing,
        errorColor: amoledError,
        textColor: amoledTextPrimary,
        hintColor: amoledTextTertiary,
      ),
      dividerTheme: _buildDividerTheme(color: amoledDivider),
      switchTheme: _buildSwitchTheme(
        activeThumbColor: amoledSecondary,
        activeTrackColor: amoledSecondary.withOpacity(0.5),
        inactiveThumbColor: amoledTextTertiary,
        inactiveTrackColor: amoledSwitchBackground,
      ),
      elevatedButtonTheme: _buildElevatedButtonTheme(
        bg: amoledPrimary,
        fg: amoledOnPrimary,
      ),
      outlinedButtonTheme: _buildOutlinedButtonTheme(
        borderCol: amoledBorder,
        textCol: amoledPrimary,
      ),
      textButtonTheme: _buildTextButtonTheme(textCol: amoledPrimary),
      extensions: const [
        BookloomThemeExtension(
          surfaceElevated: amoledSurfaceElevated,
          backgroundSecondary: amoledBackgroundSecondary,
          border: amoledBorder,
          divider: amoledDivider,
          input: amoledInput,
          inputBackground: amoledInputBackground,
          switchBackground: amoledSwitchBackground,
          glowColor: amoledGlowColor,
          success: amoledSuccess,
          warning: amoledWarning,
          error: amoledError,
          info: amoledInfo,
          chart1: amoledChart1,
          chart2: amoledChart2,
          chart3: amoledChart3,
          chart4: amoledChart4,
          chart5: amoledChart5,
        ),
      ],
    );
  }
}
