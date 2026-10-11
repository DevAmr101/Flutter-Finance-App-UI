import 'package:finance_ui/core/features/home_page/home_page_screen.dart';
import 'package:finance_ui/core/features/home_page/homepage_provider.dart';
import 'package:finance_ui/core/features/main_screen/cards_screen.dart';
import 'package:finance_ui/core/features/main_screen/profile_screen.dart';
import 'package:finance_ui/core/features/statistics_screen/statistics_provider.dart';
import 'package:finance_ui/core/features/statistics_screen/statistics_screen.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {

 const MainScreen({super.key});

 @override
 State<MainScreen> createState() => _MainScreenState();

}

class _MainScreenState extends State<MainScreen> {

 int currentIndex = 0; // the current index of the bottom navigation bar

 // list of the screens for the bottom navigation bar
 List<Widget> screens = [



// Provider for the home page screen, warp with ChangeNotifierProvider

  ChangeNotifierProvider(create: (context) => HomeProvider(),

  child: const HomePageScreen()),

// Provider for the statistics screen, warp with ChangeNotifierProvider

  ChangeNotifierProvider(create: (context) => StatisticsProvider(),
 
  child: const StatisticsScreen()),

//



 Container(

 width: double.infinity,
 height: double.infinity,
 color: Colors.blue,
 
),

 CardsScreen(),

 ProfileScreen(),

];
 // end of the list of the screens

 @override
 Widget build(BuildContext context) {

 return SafeArea(

 child: Scaffold(

 body: screens[currentIndex], // the current screen

 // bottom navigation bar
 bottomNavigationBar: BottomNavigationBar(

 type: BottomNavigationBarType.fixed,
 backgroundColor: Colors.white,
 elevation: 0.7,
 selectedItemColor: AppColors.primaryColor,
 unselectedItemColor: Colors.grey,

 // the current index of the bottom navigation bar is var = 0
 currentIndex: currentIndex,
 onTap: (value) => setState(() => currentIndex = value),
 // end of the current index

 items: [

 BottomNavigationBarItem(icon: Icon(Icons.home, size: 26.sp,), label: "Home"),
 BottomNavigationBarItem(icon: Icon(Icons.analytics, size: 26.sp,), label: "Statistics"),

 BottomNavigationBarItem(
 
 // the add button
 icon: Container(

 width: 48.sp,
 height: 48.sp,

 decoration: BoxDecoration(

 shape: BoxShape.circle,
 color: AppColors.primaryColor,

 ),

 alignment: Alignment.center,

 child: Icon(Icons.add_box_rounded, color: Colors.white, size: 26.sp,),

),

 label: "Add",
 
 ),
 // end of the add button

BottomNavigationBarItem(icon: Icon(Icons.credit_card, size: 26.sp,), label: "My Cards"),
BottomNavigationBarItem(icon: Icon(Icons.person, size: 26.sp,), label: "Profile"),

],
 
 ),
 // end of bottom navigation bar

 ),

);

 }

}