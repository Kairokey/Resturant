import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Constant/app cloors.dart';
class CatBox extends StatelessWidget {
  const CatBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 110.h,
      left: 10.w,
      child: Container(
        height: 60.h,
        width: 340.w,
        decoration: BoxDecoration(
          color: green,
          borderRadius: BorderRadius.circular(15).r,
        ),
        child: Row(
          children: [
            SizedBox(
              width: 40.w,
            ),
            Container(
              alignment: Alignment.topCenter,
              height: 40.h,
              width: 40.w,
              child: Center(
                  child: Text(
                    "3",
                    style:
                    TextStyle(fontSize: 20.sp, color: Colors.white),
                  )),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10).r,
                  color: Colors.amber),
            ),
            SizedBox(
              width: 20.w,
            ),
            Text(
              "Mi cesta",
              style: TextStyle(color: Colors.white, fontSize: 15.sp),
            ),
            VerticalDivider(
              color: Colors.white,
              width: 80.w,
              indent: 10,
              endIndent: 10,
              thickness: 3,
            ),
            Text(
              "150.00",
              style: TextStyle(color: Colors.white, fontSize: 15.sp),
            )
          ],
        ),
      ),
    );
  }
}
