import 'package:finance_ui/core/features/home_page/widgets/carousel_widget.dart';
import 'package:finance_ui/core/features/home_page/widgets/custom_home_page_item.dart';
import 'package:finance_ui/core/features/home_page/widgets/top_profile_widget.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {

    return Padding(

      padding: EdgeInsets.symmetric(horizontal: 24.w),

      child: Column(
      
      children: [
      
        const HeightSpace(18),
      
        TopProfileWidget(),

        const HeightSpace(26),

        CustomCarouselWidget(),

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

                  iconData: Icons.send, 
                  title: "Send Money", 
                  description: "acc to acc",

                  ),

                  CustomHomePageItem(

                  iconData: Icons.wallet, 
                  title: "Pay the bills", 
                  description: "Pay the bills",

                  ),

                  CustomHomePageItem(

                  iconData: Icons.send, 
                  title: "Request", 
                  description: "acc to acc",

                  ),

                  CustomHomePageItem(

                  iconData: Icons.contacts, 
                  title: "Contacts", 
                  description: "Acc Contacts",

                  ),
          
              ],
            
            ),

        ),
        // End of GridView
      
      ],
      
      ),
    );

  }
}


