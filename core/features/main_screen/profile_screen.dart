import 'package:finance_ui/core/styling/app_assets.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/back_button_black.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      
        children: [
          
          Padding(

            padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 26),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
              children: [

                const BackButtonBlack(),

                Text("My Profile", style: AppStyles.black15BoldStyle.
                copyWith(fontSize: 18),),

                Icon(Icons.edit_outlined,),
                  
              ],
                  
            ),

          ),

          const HeightSpace(26),

          Center(
            child: ClipOval(
                    child: Image.asset(AppAssets.profileImg, 
                    width: 126.w, height: 126.h,
                    fit: BoxFit.fill,
                    ),
                  ),
          ),

          const HeightSpace(26),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

              children: [
            
                Text("Name", style: AppStyles.grey12MediumStyle),

                const HeightSpace(10),

                Text("Amr Soliman", style: AppStyles.black15BoldStyle,),

                const HeightSpace(26),

                Text("Email", style: AppStyles.grey12MediumStyle),

                const HeightSpace(10),

                Text("amrsoliman@mail.com", style: AppStyles.black15BoldStyle,),

                const HeightSpace(26),

                Text("Phone Number", style: AppStyles.grey12MediumStyle),

                const HeightSpace(10),

                Text("01234567891", style: AppStyles.black15BoldStyle,),

                const HeightSpace(26),

                Text("Address", style: AppStyles.grey12MediumStyle),

                const HeightSpace(10),

                Text("NY, USA", style: AppStyles.black15BoldStyle,),
            
              ],
            
            ),
          ),

        ],

      ),

    );

  }
}