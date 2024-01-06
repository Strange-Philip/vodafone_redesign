import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vodafone_redesign/theme/app_colors.dart';
import 'package:vodafone_redesign/theme/app_typography.dart';

/// Namespace for the App [ThemeData].
class AppTheme {
  /// Standard `ThemeData` for App UI.

  ThemeData get light {
    return ThemeData(
      brightness: Brightness.light,
      colorScheme: ColorScheme.light(
          primary: AppColors.black,
          background: AppColors.white,
          surface: AppColors.black,
          outline: AppColors.gray[100],
          outlineVariant: AppColors.gray[200]),
      primaryColor: AppColors.primary,
      indicatorColor: AppColors.gray[300],
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Color(0xffF1F8F8),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 16),
      ),
      scaffoldBackgroundColor: AppColors.white,
      elevatedButtonTheme: _elevatedButtonThemeLightMode,
      outlinedButtonTheme: _outlinedButtonTheme,
      bottomNavigationBarTheme: _bottomNavigationBarThemeData,
      textTheme: _textTheme,
      dialogBackgroundColor: AppColors.white,
      dialogTheme: _dialogTheme,
      tooltipTheme: _tooltipTheme,
      bottomSheetTheme: _bottomSheetTheme,
      cardTheme: _cardTheme,
      tabBarTheme: _tabBarTheme,
      dividerTheme: _dividerTheme,
      textButtonTheme: _textButtonThemeDataLightMode,
      inputDecorationTheme: _inputDecorationTheme,
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
        },
      ),
    );
  }

  ThemeData get dark {
    return ThemeData(
      brightness: Brightness.dark,
      colorScheme: ColorScheme.dark(
          primary: AppColors.white,
          background: AppColors.black,
          surface: AppColors.white,
          outline: AppColors.gray[400],
          outlineVariant: AppColors.gray[400]),
      primaryColor: AppColors.white,
      indicatorColor: AppColors.gray[700],
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: AppColors.black,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 16),
      ),
      scaffoldBackgroundColor: AppColors.black,
      elevatedButtonTheme: _elevatedButtonThemeDarkMode,
      outlinedButtonTheme: _outlinedButtonTheme,
      bottomNavigationBarTheme: _bottomNavigationBarThemeData,
      dialogBackgroundColor: AppColors.black,
      dialogTheme: _dialogTheme,
      tooltipTheme: _tooltipTheme,
      bottomSheetTheme: _bottomSheetTheme,
      cardTheme: _cardTheme,
      tabBarTheme: _tabBarTheme,
      dividerTheme: _dividerTheme,
      textButtonTheme: _textButtonThemeDataDarkMode,
      inputDecorationTheme: _inputDecorationTheme,
      textTheme: _textTheme,
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
        },
      ),
    );
  }

  final _textTheme = TextTheme(
    bodyLarge: AppTypography().body,
    bodyMedium: AppTypography().body,
    titleMedium: AppTypography().sectionTitle,
    titleSmall: AppTypography().sectionTitle,
    displayLarge: AppTypography().largeTitle,
    displayMedium: AppTypography().body,
    displaySmall: AppTypography().body,
    headlineMedium: AppTypography().header,
    headlineSmall: AppTypography().header,
    titleLarge: AppTypography().largeTitle,
    labelLarge: AppTypography().largeTitle,
    bodySmall: AppTypography().body,
    labelSmall: AppTypography().button,
  );

  static InputDecorationTheme get _inputDecorationTheme {
    return const InputDecorationTheme(
      fillColor: AppColors.white,
      filled: true,
    );
  }

  static ElevatedButtonThemeData get _elevatedButtonThemeLightMode {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.black,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        textStyle: AppTypography().button,
        minimumSize: const Size(334, 45),
      ),
    );
  }

  static ElevatedButtonThemeData get _elevatedButtonThemeDarkMode {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.white.withOpacity(0.2),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        textStyle: AppTypography().button,
        minimumSize: const Size(334, 45),
      ),
    );
  }

  static BottomNavigationBarThemeData get _bottomNavigationBarThemeData {
    return const BottomNavigationBarThemeData(
      selectedItemColor: AppColors.primary,
      // unselectedItemColor: AppColors.black,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
    );
  }

  static TextButtonThemeData get _textButtonThemeDataLightMode {
    return TextButtonThemeData(
      style:
          TextButton.styleFrom(foregroundColor: AppColors.black, textStyle: AppTypography().button),
    );
  }

  static TextButtonThemeData get _textButtonThemeDataDarkMode {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
          foregroundColor: AppColors.gray.shade200, textStyle: AppTypography().button),
    );
  }

  static OutlinedButtonThemeData get _outlinedButtonTheme {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        side: const BorderSide(color: AppColors.white, width: 2),
        padding: const EdgeInsets.symmetric(vertical: 16),
        minimumSize: const Size(208, 54),
      ),
    );
  }

  static TooltipThemeData get _tooltipTheme {
    return const TooltipThemeData(
      decoration: BoxDecoration(
        color: AppColors.primaryLight,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      padding: EdgeInsets.all(10),
      textStyle: TextStyle(color: AppColors.white),
    );
  }

  static DialogTheme get _dialogTheme {
    return DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  static BottomSheetThemeData get _bottomSheetTheme {
    return const BottomSheetThemeData(
      backgroundColor: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
      ),
    );
  }

  static TabBarTheme get _tabBarTheme {
    return const TabBarTheme(
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          width: 2.0,
          color: AppColors.primary,
        ),
      ),
      labelColor: AppColors.primary,
      unselectedLabelColor: AppColors.black,
      indicatorSize: TabBarIndicatorSize.tab,
    );
  }

  static DividerThemeData get _dividerTheme {
    return DividerThemeData(
      space: 0,
      thickness: 1,
      color: AppColors.gray.shade100,
    );
  }

  static CardTheme get _cardTheme {
    return CardTheme(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    );
  }
}
