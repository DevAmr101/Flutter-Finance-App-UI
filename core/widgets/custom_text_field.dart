import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {

  final String? hintText;
  final Widget? suffixIcon;
  final double? width;
  final bool? isPassword;

  //
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  //

  const CustomTextField({super.key,

  this.hintText, 
  this.suffixIcon,
  this.width,
  this.isPassword,

  //
  this.controller, 
  this.validator,
  //

  });

  @override
  Widget build(BuildContext context) {

    return SizedBox(

      width: width ?? 331.w,

      child: TextFormField(

        //
        controller: controller,
        validator: validator,
        //
        
        obscureText: isPassword ?? false,

        autofocus: false,
        cursorColor: AppColors.primaryColor,

        decoration: InputDecoration(

          hintText: hintText ?? "",

          hintStyle: TextStyle(

            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF8391A1),

          ),

          contentPadding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 18.h),

          enabledBorder: OutlineInputBorder(

            borderRadius: BorderRadius.circular(8.r),

            borderSide: const BorderSide(color: Color(0xFFE8ECF4), width: 1),

          ),

          focusedBorder: OutlineInputBorder(

            borderRadius: BorderRadius.circular(8.r),

            borderSide: BorderSide(color: AppColors.primaryColor, width: 1),

          ),

          //

          errorBorder: OutlineInputBorder(

            borderRadius: BorderRadius.circular(8.r),

            borderSide: BorderSide(color: Colors.red, width: 1),

          ),

          focusedErrorBorder: OutlineInputBorder(

            borderRadius: BorderRadius.circular(8.r),

            borderSide: BorderSide(color: Colors.red, width: 1),

          ),

          //

          filled: true,
          fillColor: const Color(0xFFF7F8F9),

          suffixIcon: suffixIcon,

        ),

      ),
      
      );

  }
  
}


