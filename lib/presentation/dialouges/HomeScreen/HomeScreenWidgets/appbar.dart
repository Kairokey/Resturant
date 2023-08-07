import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../Constant/Images.dart';
import '../../../../Constant/Screens.dart';
import '../../../../Constant/app cloors.dart';
import '../../../../Constant/icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class appBar extends StatelessWidget {
  const appBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(
            width: 15.w,
          ),
          Icon(
            Icons.list,
            size: 40.r,
          ),
          SizedBox(
            width: 30.w,
          ),
          Text(
            "Entraga en:",
            style: TextStyle(fontSize: 18.sp, color: Colors.grey),
          ),
          Text(
            "Peru 2",
            style: TextStyle(
                fontSize: 18.sp,
                color: green,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 20.w,
          ),
          SvgPicture.asset(
            arrow,
            height: 10.h,
            width: 10.w,
            color: green,
          ),
          SizedBox(
            width: 40.w,
          ),
          InkWell(
            onTap: () {

                Navigator.pushNamed(context, adminScreen);

            },
            child: Container(
              height: 30.h,
              width: 30.w,
              child: Image(
                image: AssetImage(profile),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100).r),
            ),
          ),
        ],
      ),
    );
  }
}
