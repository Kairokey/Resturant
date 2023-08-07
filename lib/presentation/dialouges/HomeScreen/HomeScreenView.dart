import 'package:flutter/material.dart';
import 'package:training/Constant/app%20cloors.dart';
import 'package:training/domain/Cupit/Product/product_cubit.dart';
import 'package:training/presentation/dialouges/HomeScreen/HomeScreenWidgets/CatList.dart';
import 'package:training/presentation/dialouges/HomeScreen/HomeScreenWidgets/CatPox.dart';
import 'package:training/presentation/dialouges/HomeScreen/HomeScreenWidgets/ProductList.dart';
import 'package:training/presentation/dialouges/HomeScreen/HomeScreenWidgets/SearchBox.dart';
import 'package:training/presentation/dialouges/HomeScreen/HomeScreenWidgets/hambview.dart';
import 'package:training/presentation/dialouges/HomeScreen/HomeScreenWidgets/tapBar.dart';
import 'package:training/presentation/moduels/ClassProduct.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'HomeScreenWidgets/appbar.dart';

class HomeScreen extends StatefulWidget {
  Product? product;
  HomeScreen({this.product});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

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
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        initialIndex: 1,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                const appBar(),
                 SizedBox(
                  height: 20.h,
                ),
                  const SearchBox(),
                 SizedBox(
                  height: 10.h,
                ),
                const tapbar(),
                 SizedBox(
                  height: 20.h,
                ),
                CategoryList(),
                 Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0).r,
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Pizzas",
                        style: TextStyle(color: green, fontSize: 25.sp),
                      )),
                ),
                const ProductList(),
                 Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0).r,
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Hamburguesas",
                          style: TextStyle(color: green, fontSize: 25.sp))),
                ),
                Stack(children: [
                  HampList(),
                    const CatBox(),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
