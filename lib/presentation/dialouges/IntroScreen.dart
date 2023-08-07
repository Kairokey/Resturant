import 'package:flutter/material.dart';
import 'package:training/Constant/Images.dart';
import 'package:training/Constant/Screens.dart';
import 'package:training/Constant/app%20cloors.dart';
import 'package:training/presentation/widgets/CustomButton.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 150.h),
            const Padding(
              padding: EdgeInsets.all(50.0),
              child: Image(image: AssetImage(introimagepath)),
            ),
             Text("WE WILL FIND THE BEST!",style: TextStyle(fontSize: 25.sp,
                fontWeight: FontWeight.bold,fontFamily:"Poppins",color: green ),),
             SizedBox(height: 10.h,),
             Padding(
              padding: EdgeInsets.only(left: 70.0 ,right: 60.0,),
              child: Text("find the nearest places with the best organic foods and make your life healthier!",textAlign:TextAlign.center ,
                style: TextStyle( fontSize: 15.sp,fontFamily: "Poppins",color:green,),),

            ),
             SizedBox(height: 100.h,),
            CustomButton(name: "LET'S GO",onTap: (){Navigator.pushNamed(context, signin );},),

            

            
          ],
        ),
      ),
    );
  }
}
