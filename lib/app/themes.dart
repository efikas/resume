import 'package:resume/app/colors.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class Styles {
  static ThemeData lightThemeData(BuildContext context) {
    return ThemeData(
      primarySwatch: const MaterialColor(
        0XFF006ACC,
        <int, Color>{
          50: AppColors.primaryColor,
          100: AppColors.primaryColor,
          200: AppColors.primaryColor,
          300: AppColors.primaryColor,
          400: AppColors.primaryColor,
          500: AppColors.primaryColor,
          600: AppColors.primaryColor,
          700: AppColors.primaryColor,
          800: AppColors.primaryColor,
          900: AppColors.primaryColor,
        },
      ),
      primaryColor: AppColors.white,
      backgroundColor: AppColors.white,
      indicatorColor: AppColors.black,
      // buttonColor: const Color(0xffF1F5FB),
      hintColor: const Color(0xffEECED3),
      highlightColor: const Color(0xffFCE192),
      hoverColor: const Color(0xff4285F4),
      focusColor: const Color(0xffA8DAB5),
      disabledColor: Colors.grey,
      // textSelectionColor:  Colors.black,
      cardColor: const Color(0xFFF5EEFB),
      canvasColor: Colors.grey[50],
      brightness: Brightness.light,
      buttonTheme: Theme.of(context).buttonTheme.copyWith(colorScheme: const ColorScheme.light()),
      appBarTheme: const AppBarTheme(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(color: AppColors.black),
        iconTheme: IconThemeData(
          color: AppColors.black,
        ),
        toolbarTextStyle: TextStyle(color: AppColors.black),
        actionsIconTheme: IconThemeData(
          color: AppColors.black,
        ),
      ),
      fontFamily: "Futura",
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xFFF2F2F3),
      ),
      iconTheme: Theme.of(context).iconTheme.copyWith(color: Colors.black),
      textTheme: TextTheme(
        headline1: const TextStyle().copyWith(fontFamily: 'Futura'),
        headline2: const TextStyle().copyWith(fontFamily: 'Futura'),
        headline4: const TextStyle().copyWith(fontFamily: 'Futura'),
        headline3: const TextStyle().copyWith(fontFamily: 'Futura'),
        bodyText2: const TextStyle().copyWith(fontFamily: 'Futura'),
        bodyText1: const TextStyle().copyWith(fontFamily: 'Futura'),
        headline5: const TextStyle().copyWith(fontFamily: 'Futura'),
        headline6: const TextStyle().copyWith(fontFamily: 'Futura'),
        caption: const TextStyle().copyWith(fontFamily: 'Futura'),
        button: const TextStyle().copyWith(fontFamily: 'Futura'),
        overline: const TextStyle().copyWith(fontFamily: 'Futura'),
      ),
      // .apply(
      //   bodyColor: Colors.orange,
      //   displayColor: Colors.blue,
      // ),
    ).copyWith(
      extensions: <ThemeExtension<dynamic>>[
        ThemeColors(
          textBoxFillColor: const Color(0xFFF5EEFB),
          textBoxTitleColor: AppColors.black,
          selectBoxBackgroundColor: const Color(0xFFF5EEFB),
          selectBoxBorderColor: const Color(0xFFF5EEFB),
          selectBoxIconColor: AppColors.black,
          selectBoxTitleColor: AppColors.black,
          textBoxBorderColor: const Color(0xFFF5EEFB),
          unselectedTabIconColor: AppColors.iconDarkGrey,
          unselectedTabTextColor: AppColors.iconDarkGrey,
        ),
      ],
    );
  }

  static ThemeData darkThemeData(BuildContext context) {
    return ThemeData(
      primarySwatch: const MaterialColor(
        0XFF006ACC,
        <int, Color>{
          50: AppColors.primaryColor,
          100: AppColors.primaryColor,
          200: AppColors.primaryColor,
          300: AppColors.primaryColor,
          400: AppColors.primaryColor,
          500: AppColors.primaryColor,
          600: AppColors.primaryColor,
          700: AppColors.primaryColor,
          800: AppColors.primaryColor,
          900: AppColors.primaryColor,
        },
      ),
      primaryColor: AppColors.black,
      backgroundColor: AppColors.backgroundBlack,
      indicatorColor: AppColors.white,
      // buttonColor: const Color(0xff3B3B3B),
      hintColor: const Color(0xff280C0B),
      highlightColor: const Color(0xff372901),
      hoverColor: const Color(0xff3A3A3B),
      focusColor: const Color(0xff0B2512),
      disabledColor: Colors.grey,
      // textSelectionColor:  Colors.white,
      cardColor: const Color(0xFF1C1C1E),
      canvasColor: AppColors.backgroundBlack,
      brightness: Brightness.dark,
      buttonTheme: Theme.of(context).buttonTheme.copyWith(colorScheme: const ColorScheme.dark()),
      appBarTheme: const AppBarTheme(
        elevation: 0.0,
        backgroundColor: AppColors.backgroundBlack,
        titleTextStyle: TextStyle(color: AppColors.white),
        iconTheme: IconThemeData(
          color: AppColors.white,
        ),
        toolbarTextStyle: TextStyle(color: AppColors.white),
        actionsIconTheme: IconThemeData(
          color: AppColors.white,
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xFF0F0F0F),
      ),
      fontFamily: "Futura",
      iconTheme: Theme.of(context).iconTheme.copyWith(color: Colors.white),
      textTheme: TextTheme(
        headline1: const TextStyle().copyWith(fontFamily: 'Futura'),
        headline2: const TextStyle().copyWith(fontFamily: 'Futura'),
        headline4: const TextStyle().copyWith(fontFamily: 'Futura'),
        headline3: const TextStyle().copyWith(fontFamily: 'Futura'),
        bodyText2: const TextStyle().copyWith(fontFamily: 'Futura'),
        bodyText1: const TextStyle().copyWith(fontFamily: 'Futura'),
        headline5: const TextStyle().copyWith(fontFamily: 'Futura'),
        headline6: const TextStyle().copyWith(fontFamily: 'Futura'),
        caption: const TextStyle().copyWith(fontFamily: 'Futura'),
        button: const TextStyle().copyWith(fontFamily: 'Futura'),
        overline: const TextStyle().copyWith(fontFamily: 'Futura'),
      ),
    ).copyWith(
      extensions: <ThemeExtension<dynamic>>[
        ThemeColors(
          textBoxFillColor: const Color(0xFF1C1C1E),
          textBoxTitleColor: AppColors.white,
          selectBoxBackgroundColor: const Color(0xFF1C1C1E),
          selectBoxBorderColor: const Color(0xFF1C1C1E),
          selectBoxIconColor: AppColors.white,
          selectBoxTitleColor: AppColors.white,
          textBoxBorderColor: const Color(0xFF1C1C1E),
          unselectedTabIconColor: AppColors.iconLightGrey,
          unselectedTabTextColor: AppColors.iconLightGrey,
        ),
      ],
    );
  }
}

@immutable
class ThemeColors extends ThemeExtension<ThemeColors> {
  Color? textBoxFillColor;
  Color? textBoxTitleColor;
  Color? textBoxBorderColor;
  Color? selectBoxTitleColor;
  Color? selectBoxBackgroundColor;
  Color? selectBoxBorderColor;
  Color? selectBoxIconColor;
  Color? unselectedTabIconColor;
  Color? unselectedTabTextColor;

  ThemeColors({
    required this.textBoxBorderColor,
    required this.textBoxFillColor,
    required this.textBoxTitleColor,
    required this.selectBoxBorderColor,
    required this.selectBoxBackgroundColor,
    required this.selectBoxIconColor,
    required this.selectBoxTitleColor,
    required this.unselectedTabIconColor,
    required this.unselectedTabTextColor,
  });

  @override
  ThemeColors copyWith({
    Color? textBoxFillColor,
    Color? textBoxTitleColor,
    Color? textBoxBorderColor,
    Color? selectBoxTitleColor,
    Color? selectBoxBackgroundColor,
    Color? selectBoxBorderColor,
    Color? selectBoxIconColor,
    Color? unselectedTabIconColor,
    Color? unselectedTabTextColor,
  }) {
    return ThemeColors(
      textBoxFillColor: textBoxFillColor ?? this.textBoxFillColor,
      textBoxTitleColor: textBoxTitleColor ?? this.textBoxTitleColor,
      textBoxBorderColor: textBoxBorderColor ?? this.textBoxBorderColor,
      selectBoxTitleColor: selectBoxTitleColor ?? this.selectBoxTitleColor,
      selectBoxBackgroundColor: selectBoxBackgroundColor ?? this.selectBoxBackgroundColor,
      selectBoxBorderColor: selectBoxBorderColor ?? this.selectBoxBorderColor,
      selectBoxIconColor: selectBoxIconColor ?? this.selectBoxIconColor,
      unselectedTabIconColor: unselectedTabIconColor ?? this.unselectedTabIconColor,
      unselectedTabTextColor: unselectedTabTextColor ?? this.unselectedTabTextColor,
    );
  }

  @override
  ThemeColors lerp(ThemeColors? other, double t) {
    if (other is! ThemeColors) {
      return this;
    }
    return ThemeColors(
      textBoxFillColor: Color.lerp(textBoxFillColor, other.textBoxFillColor, t),
      textBoxTitleColor: Color.lerp(textBoxTitleColor, other.textBoxTitleColor, t),
      textBoxBorderColor: Color.lerp(textBoxBorderColor, other.textBoxBorderColor, t),
      selectBoxTitleColor: Color.lerp(selectBoxTitleColor, other.selectBoxTitleColor, t),
      selectBoxBackgroundColor: Color.lerp(selectBoxBackgroundColor, other.selectBoxBackgroundColor, t),
      selectBoxBorderColor: Color.lerp(selectBoxBorderColor, other.selectBoxBorderColor, t),
      selectBoxIconColor: Color.lerp(selectBoxIconColor, other.selectBoxIconColor, t),
      unselectedTabIconColor: Color.lerp(unselectedTabIconColor, other.unselectedTabIconColor, t),
      unselectedTabTextColor: Color.lerp(unselectedTabTextColor, other.unselectedTabTextColor, t),
    );
  }

  // Optional
  @override
  String toString() => 'ThemeColors(textBoxFillColor: $textBoxFillColor, textBoxTitleColor: $textBoxTitleColor, ...)';
}

extension CustomColorSchemeX on ColorScheme {
  Color get smallBoxColor1 => Colors.blue;
}
