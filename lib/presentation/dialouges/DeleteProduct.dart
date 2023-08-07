import 'package:flutter/material.dart';
import 'package:training/Constant/app%20cloors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../domain/Cupit/Product/product_cubit.dart';
class DeleteProductScreen extends StatefulWidget {
  const DeleteProductScreen({super.key});

  @override
  State<DeleteProductScreen> createState() => _DeleteProductScreenState();
}

class _DeleteProductScreenState extends State<DeleteProductScreen> {
  void initState() {
    ProductCubit.get(context).getProduct();
    print('dataaa');
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ProductCubit, ProductState>(
  listener: (context, state) {

  },
  builder: (context, state) {
    return SizedBox(
        child:
                GridView.builder(
            itemCount:ProductCubit.get(context).productList.length ,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2
                ),
                itemBuilder:(context,index)
                {
                    return Padding(
                      padding: const EdgeInsets.only(top: 15.0,left: 8,right: 8,).r,
                      child: Container(
                        height: 420.h,
                        width: 300.w,
                        child: Column(
                          children: [

                                Stack(
                                    children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0,right: 10,left: 10,bottom: 5).r,
                                  child: Container(
                                      height: 80.h,
                                      width: 200.w,
                                      child: Image.network(ProductCubit.get(context).productList[index]["images"][0],fit: BoxFit.fill,),
                                  ),
                                ),
                                      Positioned(
                                        left: 137.w,
                                        bottom:68.h ,
                                        child: InkWell(
                                          onTap: ()
                                          {
                                            setState(() {
                                              ProductCubit.get(context).DeleteProduct(ProductCubit.get(context).productList[index]['id']);
                                            });
                                          },
                                          child: Container(
                                            height: 25.h,
                                            width: 25.w,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(100),
                                                color: Colors.green


                                            ),
                                            child: Icon(Icons.delete,color: Colors.white,size: 20.r,),
                                          ),
                                        ),
                                      ),
                              ],
                                ),
                            Text("Id=${ProductCubit.get(context).productList[index]["id"]}",style: TextStyle(fontSize: 14.sp),),
                            Text(ProductCubit.get(context).productList[index]["title"],style: TextStyle(fontSize:10.sp),),
                            Text(ProductCubit.get(context).productList[index]['price'].toString(),style: TextStyle(fontSize: 14.sp,color:green ),),





                          ],
                        ),
                      ),
                    );

                }),

      );
  },
),
    );
  }
}
