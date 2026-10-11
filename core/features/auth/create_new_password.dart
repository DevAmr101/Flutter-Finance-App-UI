import 'package:finance_ui/core/widgets/back_button_widget.dart';
import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/custom_text_field.dart';
import 'package:finance_ui/core/widgets/primay_button_widget.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CreateNewPassword extends StatefulWidget {

  const CreateNewPassword({super.key});

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();

}

class _CreateNewPasswordState extends State<CreateNewPassword> {

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
              crossAxisAlignment: CrossAxisAlignment.start,
                    
                children: [
                    
                  const HeightSpace(12),
              
                  const BackButtonWidget(),
              
                  const HeightSpace(28),
              
                  SizedBox(
              
                    width: 320.w,
                    child: Text("Create new password", 
                    style: AppStyles.primaryHeadlinesStyle,
                    ),
              
                  ),
              
                  const HeightSpace(12),

                  Text("Your new password must be different from previous used", 
                  style: AppStyles.black15BoldStyle
                  .copyWith(color:Color(0xFF8391A1))),

                  const HeightSpace(28),
              
                  CustomTextField(
              
                    hintText: "New Password",
              
                    //
              
                    controller: password, // Assign the controller to the password field
              
                    validator: (value) {
                      
                      if (value!.isEmpty) {
              
                        return 'Enter New Password';
              
                      }
              
                      if (value.length < 8) {
              
                        return 'Password must be at least 8 characters';
              
                      } return null;
              
                    },
              
                    //
              
                    suffixIcon: Icon(
                      
                      Icons.remove_red_eye,
                      color: AppColors.greyColor,
                      size: 20.sp,
                      
                      ),
              
                  ),
              
                  const HeightSpace(15),

                  CustomTextField(
              
                    hintText: "Confirm New Password",
              
                    //
              
                    controller: password, // Assign the controller to the password field
              
                    validator: (value) {
                      
                      if (value!.isEmpty) {
              
                        return 'Confirm New Password';
              
                      }
              
                      if (value.length < 8) {
              
                        return 'Password must be at least 8 characters';
              
                      } return null;
              
                    },
              
                    //
              
                    suffixIcon: Icon(
                      
                      Icons.remove_red_eye,
                      color: AppColors.greyColor,
                      size: 20.sp,
                      
                      ),
              
                  ),
              
                  const HeightSpace(30),
              
                  PrimayButtonWidget(
              
                    onPress: (){

                      GoRouter.of(context).pushNamed(AppRoutes.passwordChangedSuccessfully);
              
                      //
              
                      if (formKey.currentState!.validate()) {
              
                        
              
                      }
              
                      //
              
                    },
              
                    buttonText: "Reset Password",
              
                  ),
                  
                  const HeightSpace(30),
                    
                ],
                    
              ),
            ),
          ),
        ),
      
      ),
    );

  }

}


