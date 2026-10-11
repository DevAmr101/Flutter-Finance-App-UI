import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/widgets/back_button_widget.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/primay_button_widget.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyOtpScreen extends StatefulWidget {

  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();

}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {

  //

  late TextEditingController pinCodeController;

  final formKey = GlobalKey<FormState>();

  @override
  initState() {
    
    super.initState();
    pinCodeController = TextEditingController();
    
  }

  //

  @override
  void dispose() {
    pinCodeController.dispose();
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

            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                  
              children: [
                  
                const HeightSpace(12),
            
                const BackButtonWidget(),
            
                const HeightSpace(28),
            
                SizedBox(
            
                  width: 280.w,
                  child: Text("OTP Verification", 
                  style: AppStyles.primaryHeadlinesStyle,
                  ),
            
                ),
            
                const HeightSpace(10),
            
                Text(
                  "Enter the verification code we just sent on your email address.",
                  style: AppStyles.subtitlesStyle,
                ),
            
                const HeightSpace(32),
            
            
            
                // Use the PinCodeTextField widget for OTP input
            
                 PinCodeTextField(appContext: context, length: 4,
                 
                 controller: pinCodeController, // 
            
                 obscureText: false, // Set to true if you want to obscure the input
            
                 enableActiveFill: true, // Enable active fill color for the selected field
            
                 keyboardType: TextInputType.number, // Set the keyboard type
            
                 pinTheme: PinTheme(
            
                   shape: PinCodeFieldShape.box,
                   borderRadius: BorderRadius.circular(8.r),
                   fieldHeight: 60.h,
                   fieldWidth: 70.w,
            
                    selectedColor: AppColors.primaryColor,
                    selectedFillColor: AppColors.whiteColor,
                    activeColor: AppColors.primaryColor,
                    activeFillColor: AppColors.whiteColor,
                    inactiveColor: AppColors.greyColor,
                    inactiveFillColor: AppColors.greyColor.withValues(alpha: 0.1,),
            
                 ),
            
                  textStyle: AppStyles.primaryHeadlinesStyle.
                  copyWith(fontSize: 22.sp,),
            
                  //
            
                  onCompleted: (value) {
                    
                    GoRouter.of(context).pushNamed(AppRoutes.mainScreen);
            
                  },
            
                  onChanged: (value) {
                    
                    
            
                  },
            
                 ), // End of PinCodeTextField
            
                const HeightSpace(38),
            
                PrimayButtonWidget(
            
                  buttonText: "Verify",
            
                  onPress: (){},
                  
                ),
            
                const Spacer(),
            
                Center(
            
                  child: RichText(
            
                    text: TextSpan(
            
                      text: "Don’t Receive Code? ",
                      style: AppStyles.black15BoldStyle
                      .copyWith(color: const Color(0xFF6A707C)),
            
                      children: [
            
                        TextSpan(
            
                          text: "Resend",
                          style: AppStyles.black15BoldStyle
                          .copyWith(color: AppColors.primaryColor),
            
                          recognizer: TapGestureRecognizer()..onTap = (){},
            
                        ),
            
                      ],
            
                    ),
            
                  ),
            
                ),

                const HeightSpace(26),
                  
              ],
                  
            ),
          ),
        ),
      
      ),
    );

  }

}


