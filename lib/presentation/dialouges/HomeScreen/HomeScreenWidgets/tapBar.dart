import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Constant/app cloors.dart';
class tapbar extends StatelessWidget {
  const tapbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  TabBar(indicatorColor: Colors.white, tabs: [
      Text(
        "Categorias",
        style: TextStyle(fontSize: 20.sp, color: green),
      ),
      Text(
        "Ofertas",
        style: TextStyle(fontSize: 20.sp, color: Colors.redAccent),
      ),
    ]);
  }
}
