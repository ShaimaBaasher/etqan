import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.whiteA700,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.h),
          ),
          shadowColor: colorScheme.primary.withOpacity(0.35),
          elevation: 4,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.gray60001,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: appTheme.whiteA700,
      ),
      dividerTheme: DividerThemeData(
        thickness: 54,
        space: 54,
        color: appTheme.whiteA700,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 19.fSize,
          fontFamily: 'IBM Plex Sans Arabic',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.blueGray900,
          fontSize: 15.fSize,
          fontFamily: 'IBM Plex Sans Arabic',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.gray500,
          fontSize: 12.fSize,
          fontFamily: 'IBM Plex Sans Arabic',
          fontWeight: FontWeight.w400,
        ),
        displayLarge: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 52.fSize,
          fontFamily: 'IBM Plex Sans Arabic',
          fontWeight: FontWeight.w600,
        ),
        displayMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 48.fSize,
          fontFamily: 'IBM Plex Sans Arabic',
          fontWeight: FontWeight.w600,
        ),
        labelLarge: TextStyle(
          color: appTheme.blueGray900,
          fontSize: 13.fSize,
          fontFamily: 'IBM Plex Sans Arabic',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: appTheme.blueGray900,
          fontSize: 20.fSize,
          fontFamily: 'IBM Plex Sans Arabic',
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: 17.fSize,
          fontFamily: 'IBM Plex Sans Arabic',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: appTheme.blueGray900,
          fontSize: 15.fSize,
          fontFamily: 'IBM Plex Sans Arabic',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF0EBE7E),

    // On colors(text colors)
    onPrimary: Color(0XFF1C274C),
    onPrimaryContainer: Color(0X33D9D9D9),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF0C0C0D);

  // Blacke
  Color get black9001e => Color(0X1E000000);

  // BlueGray
  Color get blueGray100 => Color(0XFFD2D2D2);
  Color get blueGray10001 => Color(0XFFD7D7D7);
  Color get blueGray900 => Color(0XFF363636);
  Color get blueGray90001 => Color(0XFF343535);

  // Gray
  Color get gray100 => Color(0XFFF2F2F3);
  Color get gray300 => Color(0XFFE3E3E3);
  Color get gray500 => Color(0XFF959595);
  Color get gray600 => Color(0XFF808080);
  Color get gray60001 => Color(0XFF818181);
  Color get gray700 => Color(0XFF565656);

  // GrayB
  Color get gray100B9 => Color(0XB9F4F4F4);

  // Indigo
  Color get indigo800 => Color(0XFF2E3482);

  // Red
  Color get red400 => Color(0XFFF54C4C);

  // Teal
  Color get teal400 => Color(0XFF2ECF95);
  Color get teal50 => Color(0XFFD8F4EA);

  // White
  Color get whiteA700 => Color(0XFFFFFFFF);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
