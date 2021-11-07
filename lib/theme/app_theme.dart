import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_base_project/common/constants/colors.dart';
import 'package:flutter_base_project/common/constants/strings.dart';
import 'package:flutter_base_project/theme/data/custom_typography.dart';

class AppTheme {
  static ThemeData data = ThemeData.light().copyWith(
      brightness: Brightness.light,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: CustomTypography.data
          .copyWith()
          .apply(bodyColor: BLACK, fontFamily: FONT_FAMILY),
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      shadowColor: PRIMARY_VARIENT,
      toggleableActiveColor: SECONDARY,
      colorScheme: const ColorScheme.light().copyWith(
        primary: PRIMARY,
        primaryVariant: PRIMARY_VARIENT,
        secondary: SECONDARY,
        secondaryVariant: SECONDARY_VARIENT,
      ),
      appBarTheme: const AppBarTheme(
        color: WHITE,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        elevation: 0,
      ),
      tabBarTheme: TabBarTheme(
          indicatorSize: TabBarIndicatorSize.label,
          labelColor: BLACK,
          labelStyle: CustomTypography.data.headline6));
}
