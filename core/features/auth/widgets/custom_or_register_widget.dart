import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOrRegisterWidget extends StatelessWidget {
  const CustomOrRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Row(

                children: [

                  SizedBox(

                    width: 80.w,
                    child: const Divider(),

                  ),

                  const WidthSpace(12),

                  Text("Or Register With", 
                  style: AppStyles.black15BoldStyle
                  .copyWith(color:Color(0xFF6A707C))),

                  const WidthSpace(12),

                  SizedBox(

                    width: 90.w,
                    child: const Divider(),

                  ),

                ]

              );

  }
}