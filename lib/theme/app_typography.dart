import 'package:flutter/material.dart';
import 'package:vodafone_redesign/theme/app_colors.dart';

// https://stackoverflow.com/a/63068152/644571
double _heightCalc(int pxHeight, int fontSize) => pxHeight / fontSize;

class AppTypography {
  TextStyle get baseTextStyle => const TextStyle(
        fontStyle: FontStyle.normal,
        fontFamily: 'ProductSans',
      );

  /// bold  TextStyle styles
  TextStyle get extraLarge => baseTextStyle.copyWith(
        fontWeight: FontWeight.bold,
        fontSize: 32,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(48, 34),
      );

  TextStyle get largeTitle => baseTextStyle.copyWith(
        fontWeight: FontWeight.w900,
        fontSize: 27,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(36, 27),
      );
  TextStyle get appbarTitle => baseTextStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        overflow: TextOverflow.ellipsis,
      );

  TextStyle get sectionTitle => baseTextStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 16,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(23, 16),
      );

  TextStyle get header => baseTextStyle.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 15,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(20, 15),
      );

  TextStyle get body => baseTextStyle.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 15,
        color: AppColors.gray[500],
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(20, 15),
      );

  TextStyle get subheader => baseTextStyle.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 12,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(16, 12),
      );

  TextStyle get button => baseTextStyle.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(20, 15),
      );

  TextStyle get caption => baseTextStyle.copyWith(
        fontSize: 14,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(17, 14),
      );

  TextStyle get subHeadingBold => baseTextStyle.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 12,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(18, 12),
        letterSpacing: 0.06,
      );

  TextStyle get smallBold => baseTextStyle.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 11,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(13, 11),
      );
}
