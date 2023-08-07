import 'package:flutter/material.dart';

import '../../../../Constant/app cloors.dart';
import '../../../moduels/Category.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryList extends StatelessWidget {
  List<CategoryModel> category = [
    CategoryModel(
        categoryname: "Pizzas",
        caategoryimage: "images/007-pizza.png",
        color: green,
        texcolor: Colors.white),
    CategoryModel(
        categoryname: "Burger",
        caategoryimage: "images/029-burger.png",
        color: Colors.white,
        texcolor: Colors.grey),
    CategoryModel(
        categoryname: "Sandwich",
        caategoryimage: "images/013-sandwich.png",
        color: Colors.white,
        texcolor: Colors.grey),
    CategoryModel(
        categoryname: "Desayuno",
        caategoryimage: "images/010-breakfast.png",
        color: Colors.white,
        texcolor: Colors.grey),
    CategoryModel(
        categoryname: "Brocheta",
        caategoryimage: "images/016-barbecue.png",
        color: Colors.white,
        texcolor: Colors.grey),
  ];

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 120.h,
      width: double.infinity,
      child: ListView.builder(
          itemCount: category.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0).w,
                  child: Container(
                    height: 90.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                        color: category[index].color,
                        borderRadius: BorderRadius.circular(10).r),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        Image.asset(
                          category[index].caategoryimage!,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          category[index].categoryname!,
                          style: TextStyle(
                              color: category[index].texcolor,
                              fontSize: 15.sp),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
