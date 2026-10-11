import 'package:finance_ui/core/widgets/back_button_widget.dart';
import 'package:finance_ui/core/features/auth/widgets/custom_or_login_widget.dart';
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

class LoginScreen extends StatefulWidget {

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();

}

class _LoginScreenState extends State<LoginScreen> {

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
              
                    width: 280.w,
                    child: Text("Welcome Back Again", 
                    style: AppStyles.primaryHeadlinesStyle,
                    ),
              
                  ),
              
                  const HeightSpace(28),
              
                  CustomTextField(
              
                    hintText: "Enter Your Email",
              
                    //
              
                    controller: emailController, // Assign the controller to the email field
              
                    validator: (value) {
              
                      if (value!.isEmpty) {
              
                        return 'Enter your Email';
              
                      }  return null;
                      
                    },
              
                    //
              
                  ),
              
                  const HeightSpace(15),
              
                  CustomTextField(
              
                    hintText: "Enter Your Password",
              
                    //
              
                    controller: password, // Assign the controller to the password field
              
                    validator: (value) {
                      
                      if (value!.isEmpty) {
              
                        return 'Enter your Password';
              
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
              
                  Align(
                    alignment: Alignment.centerRight,
              
                    child: GestureDetector(
                      onTap: () {

                        GoRouter.of(context).pushNamed(AppRoutes.passwordReturn);
                        
                      },
                      child: Text("Forgot Password?", 
                      
                        style: AppStyles.black15BoldStyle.copyWith(color: Color(0xFF6A707C)),
                        
                        ),
                    ),
              
                  ),

                  const HeightSpace(30),
              
                  PrimayButtonWidget(
              
                    onPress: (){
              
                      //
              
                      if (formKey.currentState!.validate()) {
              
                        GoRouter.of(context).pushNamed(AppRoutes.verifyOtpScreen);
              
                      }
              
                      //
              
                    },
              
                    buttonText: "Login",
              
                  ),
              
                  const HeightSpace(35),
              
                  const CustomOrLoginWidget(),
              
                  const HeightSpace(22),
              
                  const CustomSocialLoginIcons(),
              
                  const  HeightSpace(141),
              
                  Center(

                    child: RichText(
                      text: TextSpan(
                        text: "Don’t have an account? ",
                        style: AppStyles.black15BoldStyle.copyWith(color: const Color(0xFF6A707C)),

                        children: [

                          TextSpan(
                            text: "Register Now",
                            style: AppStyles.black15BoldStyle.copyWith(color: AppColors.primaryColor),
                            
                            // لجعل الكلمة قابلة للضغط
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {

                                GoRouter.of(context).pushNamed(AppRoutes.registerScreen);

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


