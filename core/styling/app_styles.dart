import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {

  static TextStyle primaryHeadlinesStyle = TextStyle(fontFamily: AppFonts.mainFontName,
  fontSize: 30.sp,
  fontWeight: FontWeight.bold,
  color: AppColors.primaryColor
  );

  static TextStyle subtitlesStyle = TextStyle(fontFamily: AppFonts.mainFontName,
  fontSize: 16.sp,
  fontWeight: FontWeight.w400,
  color: AppColors.secondaryColor,
  );

  static TextStyle black16w500Style = TextStyle(fontFamily: AppFonts.mainFontName,
  fontSize: 16.sp,
  fontWeight: FontWeight.w500,
  color: AppColors.blackColor,
  );

  static TextStyle grey12MediumStyle = TextStyle(fontFamily: AppFonts.mainFontName,
  fontSize: 12.sp,
  fontWeight: FontWeight.w500,
  color: AppColors.greyColor,
  );

  static TextStyle black15BoldStyle = TextStyle(fontFamily: AppFonts.mainFontName,
  fontSize: 15.sp,
  fontWeight: FontWeight.bold,
  color: Colors.black,
  );


}