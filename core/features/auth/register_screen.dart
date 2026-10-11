import 'package:finance_ui/core/widgets/back_button_widget.dart';
import 'package:finance_ui/core/features/auth/widgets/custom_or_register_widget.dart';
import 'package:finance_ui/core/features/auth/widgets/social_login_buttons.dart';
import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/custom_text_field.dart';
import 'package:finance_ui/core/widgets/primay_button_widget.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatefulWidget {

  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();

}

class _RegisterScreenState extends State<RegisterScreen> {

  //

  late TextEditingController emailController;
  late TextEditingController password;
  late TextEditingController confirmPassword;
  final formKey = GlobalKey<FormState>();

  @override
  initState() {
    super.initState();
    emailController = TextEditingController();
    password = TextEditingController();
    confirmPassword = TextEditingController();
  }

  //

  @override
  void dispose() {
    emailController.dispose();
    password.dispose();
    confirmPassword.dispose();
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
              
                    width: 280.w,
                    child: Text("Hello! Register to get started", 
                    style: AppStyles.primaryHeadlinesStyle,
                    ),
              
                  ),
              
                  const HeightSpace(28),

                  CustomTextField(

                    hintText: "Username",

                    controller: emailController, // Assign the controller to the email field
              
                    validator: (value) {
              
                      if (value!.isEmpty) {
              
                        return 'Enter Username';
              
                      }  return null;
                      
                    },
              
                    //

                  ),

                  const HeightSpace(15),
              
                  CustomTextField(
              
                    hintText: "Email",
              
                    //
              
                    controller: emailController, // Assign the controller to the email field
              
                    validator: (value) {
              
                      if (value!.isEmpty) {
              
                        return 'Enter Email';
              
                      }  return null;
                      
                    },
              
                    //
              
                  ),
              
                  const HeightSpace(15),
              
                  CustomTextField(
              
                    hintText: "Password",
              
                    //
              
                    controller: password, // Assign the controller to the password field
              
                    validator: (value) {
                      
                      if (value!.isEmpty) {
              
                        return 'Enter Password';
              
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
              
                    hintText: "Confirm Password",
              
                    //
              
                    controller: confirmPassword, // Assign the controller to the confirm password field
              
                    validator: (value) {
                      
                      if (value!.isEmpty) {
              
                        return 'Confirm Password';
              
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
              
                      //
              
                      if (formKey.currentState!.validate()) {
              
                        
              
                      }
              
                      //
              
                    },
              
                    buttonText: "Register",
              
                  ),
              
                  const HeightSpace(35),
              
                  const CustomOrRegisterWidget(),
              
                  const HeightSpace(22),
              
                  const CustomSocialLoginIcons(),
              
                  const  HeightSpace(80),
              
                  Center(

                      child: RichText(
                        text: TextSpan(
                          text: "Already have an account? ",
                          style: AppStyles.
                          black15BoldStyle.copyWith(color: const Color(0xFF6A707C)),

                          children: [

                            TextSpan(
                              text: "Login Now",
                              style: AppStyles.
                              black15BoldStyle.copyWith(color: AppColors.primaryColor),
                              
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {

                                  GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
                                  
                                },
                            ),
                          ],
                        ),
                      ),

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


