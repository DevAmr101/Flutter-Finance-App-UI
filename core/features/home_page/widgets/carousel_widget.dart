import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:finance_ui/core/features/home_page/widgets/card_item_widget.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCarouselWidget extends StatefulWidget {
  const CustomCarouselWidget({super.key});

  @override
  State<CustomCarouselWidget> createState() => _CustomCarouselWidgetState();
}

class _CustomCarouselWidgetState extends State<CustomCarouselWidget> {

  int currentIndexPage = 0;

  @override
  Widget build(BuildContext context) {

    return 
    
    Column(

      children: [

        CarouselSlider(
        
        options: CarouselOptions(
        
          height: 263.h,
          padEnds: false,
          viewportFraction: 0.7,
          enlargeCenterPage: true,
          enlargeFactor: 0.2,

          onPageChanged:(index, reason) {

            setState(() {
              currentIndexPage = index;
            });

          },
        
          ),
        
          items: [
        
          CardItemWidget(),
          CardItemWidget(),
          CardItemWidget(),
        
          ],
        
        ),

        const HeightSpace(26),

        DotsIndicator(

          dotsCount: 3,
          position: currentIndexPage.toDouble(),

          decorator: DotsDecorator(

            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
            color: Color(0xffE3E9ED),
            spacing: EdgeInsets.symmetric(horizontal: 4),

  ),

),

      ],
    );

  }
}

