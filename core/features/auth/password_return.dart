import 'package:finance_ui/core/widgets/back_button_widget.dart';
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

class PasswordReturn extends StatefulWidget {

  const PasswordReturn({super.key});

  @override
  State<PasswordReturn> createState() => _PasswordReturnState();

}

class _PasswordReturnState extends State<PasswordReturn> {

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
                    child: Text("Forgot Password?", 
                    style: AppStyles.primaryHeadlinesStyle,
                    ),
              
                  ),
              
                  const HeightSpace(12),

                  Text("Don't worry! It occurs. Please enter the email address linked with your account.", 
                  style: AppStyles.black15BoldStyle
                  .copyWith(color:Color(0xFF8391A1))),

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
              
                  const HeightSpace(30),
              
                  PrimayButtonWidget(
              
                    onPress: (){

                      GoRouter.of(context).pushNamed(AppRoutes.createNewPassword);
              
                      //
              
                      if (formKey.currentState!.validate()) {
              
                        
              
                      }
              
                      //
              
                    },
              
                    buttonText: "Send Code",
              
                  ),
                  
                  const HeightSpace(30),

                  const  HeightSpace(141),
              
                  Center(

                    child: RichText(
                      text: TextSpan(
                        text: "Remember Password? ",
                        style: AppStyles.black15BoldStyle.copyWith(color: const Color(0xFF6A707C)),

                        children: [

                          TextSpan(
                            text: "Login",
                            style: AppStyles.black15BoldStyle.copyWith(color: AppColors.primaryColor),
                            
                            // لجعل الكلمة قابلة للضغط
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


