import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:training/Constant/Images.dart';
import 'package:training/Constant/app%20cloors.dart';
import 'package:training/presentation/dialouges/IntroScreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(

      logo: Image.asset(logoPath,height: 90.h,width: 400.w,),
      title: Text("find good food",style: TextStyle(fontSize: 20.sp, fontFamily: "Poppins",color: green),),
      navigator: IntroScreen(),
      durationInSeconds: 5,

    );
  }
}
