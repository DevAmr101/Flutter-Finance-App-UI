import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/styling/app_assets.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/primay_button_widget.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class PasswordChangedSuccessfully extends StatefulWidget {

  const PasswordChangedSuccessfully({super.key});

  @override
  State<PasswordChangedSuccessfully> createState() => _PasswordChangedSuccessfullyState();

}

class _PasswordChangedSuccessfullyState extends State<PasswordChangedSuccessfully> {

  //

  late TextEditingController emailController;
  late TextEditingController password;
  final formKey = GlobalKey<FormState>();

  @override
  initState() {
    super.initState();
    emailController = TextEditingController();
    password = TextEditingController();
  }

  //

  @override
  void dispose() {
    emailController.dispose();
    password.dispose();
    super.dispose();
  }

  //

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
      
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),

          child: Form( // Wrap the Column with a Form widget to enable validation

            key: formKey, // Assign the form key

            child: SingleChildScrollView(
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
                    
                children: [

                  const HeightSpace(100),

                  Image.asset(AppAssets.check,
          
         
          width: 120.w,
          height: 120.h,
          fit: BoxFit.contain,

          ),

          const HeightSpace(21),
                    
                  const HeightSpace(12),
              
                  const HeightSpace(28),
              
                  SizedBox(
              
                    width: 280.w,
                    child: Text("Password Changed!", 
                    style: AppStyles.primaryHeadlinesStyle,
                    ),
              
                  ),

                  const HeightSpace(12),

                  Text("Your password has been changed successfully.", 
                  textAlign: TextAlign.center,
                  style: AppStyles.black15BoldStyle
                  .copyWith(color:Color(0xFF8391A1))),
              
                  const HeightSpace(28),
              
                  PrimayButtonWidget(
              
                    onPress: (){

                      GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
              
                      //
              
                      if (formKey.currentState!.validate()) {
              
                        
              
                      }
              
                      //
              
                    },
              
                    buttonText: "Back to Login",
              
                  ),
              
                  const HeightSpace(26),
                
                ],
                    
              ),
            ),
          ),
        ),
      
      ),
    );

  }

}


