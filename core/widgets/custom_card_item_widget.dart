import 'package:finance_ui/core/styling/app_assets.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCardItemWidget extends StatelessWidget {
  const CustomCardItemWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return 
    
    Stack(

      children: [

        Container(
        
          width: 327.w,
          height: 179.h,
        
          decoration: BoxDecoration(
        
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(16.r),
        
          ),
        
        ),

        Positioned(

          bottom: 0,
          left: 0,
          
          child: Image.asset(

          AppAssets.layer2, width: 120.w , height: 130.h,
          fit: BoxFit.fill,
          
          ),

        ),

        Positioned(

          bottom: 0,
          left: 0,
          
          child: Image.asset(

          AppAssets.layer1, width: 207.w , height: 200.h,
          fit: BoxFit.fill,
          
          ),

        ),

        Positioned(

          top: 26.w,
          left: 26.w,
          
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Text("X Card", style: AppStyles.black15BoldStyle.
            copyWith(fontSize: 12.sp, color: Colors.white),),

            const HeightSpace(11),

            Text("Balance", style: AppStyles.grey12MediumStyle),

            const HeightSpace(11),

            Text("1000.000.000 USD", style: AppStyles.black15BoldStyle.
            copyWith(fontSize: 18.sp, color: Colors.white),),

          ],

        )
        
        ),

        Positioned(

          bottom: 26.h,
          right: 26.w,
          
            child: Text("12/26", style: AppStyles.black15BoldStyle.
            copyWith(fontSize: 12.sp, color: Colors.white),),
            
            ),

        Positioned(

          bottom: 26.h,
          left: 26.w,
          
            child: Text("**** 2626", style: AppStyles.grey12MediumStyle),
            
            ),

      ],

    );

  }
}