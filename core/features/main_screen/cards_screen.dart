import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/back_button_black.dart';
import 'package:finance_ui/core/widgets/custom_card_item_widget.dart';
import 'package:finance_ui/core/widgets/custom_card_item_widget2.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(child: 
    
    Column(

      children: [

        Padding(

            padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 26),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
              children: [

                const BackButtonBlack(),

                Text("Cards", style: AppStyles.black15BoldStyle.
                copyWith(fontSize: 18),),

                Icon(Icons.menu,),
                  
              ],

            ),

          ),

          const HeightSpace(26),

          CustomCardItemWidget(),

          const HeightSpace(26),

          CustomCardItemWidget2(),

      ],

    )

    );
    
  }
}