import 'package:eventorganizerapp/utils/color_util.dart';
import 'package:flutter/material.dart';

class AppThemeUtil {
  static final ThemeData theme = ThemeData(
      appBarTheme: const AppBarTheme(
          elevation: 3,
          color: AppColorUtils.whiteColor,
          actionsIconTheme:
              IconThemeData(color: AppColorUtils.iconAppBarColor)),
      scaffoldBackgroundColor: AppColorUtils.whiteColor,
      primaryColor: AppColorUtils.beigeColor,
      primarySwatch: Colors.brown,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.fromLTRB(30, 5, 30, 5),
              backgroundColor: AppColorUtils.beigeBorderColor)),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.fromLTRB(60, 5, 60, 5),
              side: const BorderSide(
                  width: 1.0, color: AppColorUtils.beigeBorderColor),
              textStyle: const TextStyle(color: AppColorUtils.beigeColor)))
      // textTheme: GoogleFonts.interTextTheme(),
      );
}
