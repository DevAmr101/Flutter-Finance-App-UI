import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomIconButton extends StatelessWidget {

  final VoidCallback? onTap;
  final String iconPath;

  const CustomIconButton({super.key, this.onTap, required this.iconPath});

  @override
  Widget build(BuildContext context) {

    return 
    
    InkWell(

                    onTap: onTap,

                    child: Container(

                    width: 105.w,
                    height: 56.h,
                                    
                    decoration: BoxDecoration(

                      color: Colors.transparent,
                      border: Border.all(color: Color(0xffe8ecf4), width: 1),
                      borderRadius: BorderRadius.circular(16.r),
                      
                      ),
                                    
                      child: Center(
                                    
                        child: SvgPicture.asset(
                                        
                          iconPath,
                        
                          width: 12.w,
                          height: 24.h,
                                        
                          ),
                                    
                      ),
                                    
                    ),

                  );


  }
}