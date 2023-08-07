import 'package:flutter/material.dart';
import 'package:training/presentation/moduels/pizzas.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../Constant/app cloors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class HampList extends StatelessWidget {

  List<pizzas> Pizzas = [
    pizzas(image: "images/pizza1.png", price: 150.00, name: "Pizza veloper"),
    pizzas(image: "images/pizza2.png", price: 70.00, name: "Pizza Cantos"),
  ];
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 190.h,
      width: double.infinity,
      child: ListView.builder(
          itemCount: Pizzas.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0).w,
                  child: Container(
                    height: 110.h,
                    width: 350.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15).r,
                        color: Colors.white),
                    child: Row(
                      children: [
                        Container(
                            height: 60.h,
                            width: 80.w,
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(100).r),
                            child: Image(
                              image:
                              AssetImage(Pizzas[index].image),
                            )),
                        Column(
                          children: [
                            SizedBox(
                              height: 10.h,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(3.0).w,
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  Pizzas[index].name!,
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: green,
                                      fontWeight:
                                      FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(3.0).w,
                              child: Text(
                                "Lorem ipsum dolor sit amet, consetetur",
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  color: green,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(3.0).w,
                              child: Text(
                                "\$ ${Pizzas[index].price!.toString()}",
                                style: TextStyle(
                                    color: Colors.lightBlueAccent,
                                    fontSize: 15.sp),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30.0, left: 20.0).r,
                          child: Container(
                            alignment: Alignment.bottomRight,
                            height: 40.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(100).r,
                              color: green,
                            ),
                            child: Center(
                                child: SvgPicture.asset(
                                  "icons/shopping-cart.svg",
                                  height: 18.h,
                                  width: 18.w,
                                )),
                          ),
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
