import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:training/Constant/app%20cloors.dart';
import 'package:training/domain/Cupit/Product/product_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training/presentation/dialouges/CategoryScreen/CategoryScreenView.dart';
import 'package:flutter_svg/svg.dart';
import 'package:training/presentation/moduels/pizzas.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<pizzas> Pizzas = [
    pizzas(image: "images/pizza1.png", price: 150.00, name: "Pizza veloper"),
    pizzas(image: "images/pizza2.png", price: 70.00, name: "Pizza Cantos"),
  ];
  void initState() {
    ProductCubit.get(context).productList.length;
    ProductCubit.get(context).getProduct();
    print(ProductCubit.get(context).productList.length);
    print('dataaa');
    // TODO: implement initState
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    return      BlocConsumer<ProductCubit, ProductState>(
      builder: (context, state) {
        print('---dddddddddddd---');
        print(ProductCubit.get(context).productList.length);
        return state is ProductSuccess
            ? Stack(
          children: [
            Container(
              height: 190.h,
              width: double.infinity,
              child: ListView.builder(
                  itemCount: ProductCubit.get(context)
                      .productList
                      .length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0).w,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CategoryScreen(
                                            CategoryName: ProductCubit.get(context).productList[index]["title"].toString(),
                                            Price: ProductCubit.get(context).productList[index]["price"],
                                            images: ProductCubit.get(context).productList[index]["images"],
                                          ),

                                  ));
                            },
                            child: Container(
                              height: 110.h,
                              width: 350.w,
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(
                                      15).r,
                                  color: Colors.white),
                              child: Row(
                                children: [
                                  Container(
                                      height: 60.h,
                                      width: 80.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius
                                              .circular(
                                              100).r),
                                      child: Image(
                                        image: NetworkImage(
                                            ProductCubit.get(
                                                context)
                                                .productList[
                                            index]
                                            ["images"]
                                            [0]
                                                .toString()),
                                      )),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets
                                            .all(3.0).w,
                                        child: Align(
                                          alignment: Alignment
                                              .topLeft,
                                          child: Text(
                                            ProductCubit.get(
                                                context)
                                                .productList[
                                            index]
                                            ["title"]
                                                .toString(),
                                            style: TextStyle(
                                                fontSize: 13.sp,
                                                color: green,
                                                fontWeight:
                                                FontWeight
                                                    .bold),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets
                                            .all(3.0).w,
                                        child: Text(
                                          "Lorem ipsum dolor sit amet, consetetur",
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            color: green,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets
                                            .all(3.0).w,
                                        child: Text(
                                          "\$ ${ProductCubit.get(context).productList[index]["price"].toString()}",
                                          style: TextStyle(
                                              color: Colors
                                                  .lightBlueAccent,
                                              fontSize: 15.sp),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding:
                                    EdgeInsets.only(
                                        top: 30.0.h,
                                        left: 20.0.w),
                                    child: Container(
                                      alignment: Alignment
                                          .bottomRight,
                                      height: 40.h,
                                      width: 40.w,
                                      child: Center(
                                          child: SvgPicture
                                              .asset(
                                            "icons/shopping-cart.svg",
                                            height: 18.h,
                                            width: 18.w,
                                          )),
                                      decoration:
                                      BoxDecoration(
                                        borderRadius:
                                        BorderRadius
                                            .circular(
                                            100).r,
                                        color: green,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            ),
          ],
        )
            : Center(child: CircularProgressIndicator());
      },
      listener: (context, state) {},
    );
  }
}
