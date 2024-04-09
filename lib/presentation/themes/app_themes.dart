import 'package:calculator/presentation/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
        //  scaffoldBackgroundColor: AppColors.backgroundcolor,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                foregroundColor:
                    const MaterialStatePropertyAll(AppColors.white),
                backgroundColor:
                    const MaterialStatePropertyAll(AppColors.buttonActioncolor),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ))),
        inputDecorationTheme: const InputDecorationTheme(
          floatingLabelBehavior: FloatingLabelBehavior.never,
        ),
        primaryColor: AppColors.buttoncolor,
        primaryColorDark: AppColors.buttonActioncolor,
        primaryColorLight: AppColors.appThemecolor,
        textTheme: TextTheme(
          bodyMedium: TextStyle(
              color: Colors.black.withOpacity(0.7),
              fontWeight: FontWeight.w400,
              fontSize: 15),
          bodySmall: const TextStyle(
              color: Colors.grey, fontWeight: FontWeight.w300, fontSize: 15),
        ),
      );
}
