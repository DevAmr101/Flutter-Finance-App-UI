import 'package:finance_ui/core/styling/app_assets.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopProfileWidget extends StatelessWidget {
  const TopProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return         
    
    Row(
      
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
          children: [
      
            Row(
      
              children: [
      
                ClipOval(
                  child: Image.asset(AppAssets.profileImg, 
                  width: 48.w, height: 48.h,
                  fit: BoxFit.fill,
                  ),
                ),

                const WidthSpace(11),

                Column(

                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                    Text("Welcome back",
                    
                    style: AppStyles.grey12MediumStyle,

                    ),

                    const HeightSpace(2),

                    Text("Amr Soliman",
                    
                    style: AppStyles.black15BoldStyle.copyWith(fontSize: 18.sp),

                    ),

                  ],

                ),
      
              ],
      
            ),

            Container(

              width: 48.w,
              height: 48.h,
              alignment: Alignment.center,

              decoration: BoxDecoration(

                shape: BoxShape.circle,
                border: Border.all(color: Color(0xffE3E9ED), width: 1),

              ),

              child: Icon(Icons.notifications, color: AppColors.primaryColor, size: 24.sp,),

            ),
      
          ],
      
        );
    
  }
}