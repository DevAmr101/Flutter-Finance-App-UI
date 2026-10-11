import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/styling/app_assets.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/primay_button_widget.dart';
import 'package:finance_ui/core/widgets/primay_outlined_button_widget.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Column(

        children: [

          Image.asset(AppAssets.onBoard,
          
          width: double.infinity,
          height: 570.h,
          fit: BoxFit.fitWidth,

          ),

          const HeightSpace(21),

          PrimayButtonWidget(

            onPress: (){

              GoRouter.of(context).pushNamed(AppRoutes.loginScreen);

            },

            buttonText: "Login",

            width: 331.w,
            height: 56.h

          ),

          const HeightSpace(15),

          PrimayOutlinedButtonWidget(

            onPress: (){

              GoRouter.of(context).pushNamed(AppRoutes.registerScreen);

            },

            buttonText: "Register",

            width: 331.w,
            height: 56.h

          ),

          const HeightSpace(46),

          Text("Continue as a guest",
          
          style: AppStyles.black15BoldStyle.copyWith(

            color: const Color(0xFF202955),
            decoration: TextDecoration.underline,

          ),

          ),

        ],

      ),

    );

  }
}