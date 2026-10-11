import 'package:finance_ui/core/features/home_page/widgets/custom_home_page_item.dart';
import 'package:finance_ui/core/features/statistics_screen/widgets/statistics_widget.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/back_button_black.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen({super.key});

  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
      
        child: Column(
        
          children: [
      
const HeightSpace(11),

      Center(
        child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      
                  children: [
        
                    const BackButtonBlack(),
        
                    Text("Statistics", style: AppStyles.black15BoldStyle.
                    copyWith(fontSize: 18),),
        
                    Icon(Icons.menu,),
                      
                  ],
        
                ),
      ),
      
            const HeightSpace(40),
      
            BarChartSample3(),
      
          const HeightSpace(26),
      
          // GridView
            Expanded(
      
            child: GridView(
              
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                
                crossAxisCount: 2,
                mainAxisSpacing: 8.sp,
                crossAxisSpacing: 16.sp,
                
                ),
            
                children: [
            
                  CustomHomePageItem(
      
                    iconData: Icons.import_export_rounded, 
                    title: "1000000 USD", 
                    description: "Income",
      
                    ),
      
                    CustomHomePageItem(
      
                    iconData: Icons.import_export_rounded, 
                    title: "100000 USD", 
                    description: "Outcome",
      
                    ),
      
                    
            
                ],
              
              ),
      
          ),
          // End of GridView
      
          ],
        
        ),
      ),
    );

  }
}