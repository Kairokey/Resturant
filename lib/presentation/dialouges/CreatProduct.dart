
import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:training/Constant/app%20cloors.dart';
import 'package:training/data/models/CreateProduct.dart';
import 'package:training/domain/Cupit/Product/product_cubit.dart';
import 'package:training/presentation/widgets/TextFormFieldProduct.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CreatProductScreen extends StatefulWidget {

  @override
  State<CreatProductScreen> createState() => _CreatProductState();
}

class _CreatProductState extends State<CreatProductScreen> {
  var imageFile;
  showOPtion(BuildContext context) {
    return showDialog(context: context,
        builder: (context)=>
            AlertDialog(
              title: Text("Make a choice"),
              content: SingleChildScrollView(
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.image),
                      title: Text("Gallery"),
                      onTap:()=> imageFromGallery(context),

                    ),
                    ListTile(
                      leading: Icon(Icons.camera_alt_outlined),
                      title: Text("Camera"),
                      onTap:()
                      {
                        setState(() {
                          imageFromCamera(context);
                        });
                      }

                    )
                  ],
                ),

              ),
            ));
  }
  Future <File?>imageFromGallery(BuildContext context)async
  {
 var image =await ImagePicker().pickImage(source: ImageSource.gallery);
 setState(() {
   imageFile= File(image!.path) ;
   Navigator.pop(context);
 });
  }
  Future imageFromCamera(BuildContext context)async
  {
    var image= await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      imageFile = File(image!.path) ;
      Navigator.pop(context);
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100.h,),
          Align(
            alignment: Alignment.topCenter,
            child: DottedBorder(
              color: Colors.grey.shade400,
              borderType: BorderType.Rect,
                strokeWidth: 3,
              dashPattern: [5, 2],
              padding: EdgeInsets.all(20).w,
                radius: Radius.circular(12.r),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(12)),

                child:InkWell(
                  onTap: ()
                  {
                    setState(() {
                      showOPtion(context);
                    });
                  },
                  child: Container(
                    height: 200.h,
                    width: 200.w,
                    child: Center(child:imageFile != null
                        ?Image.file(imageFile! ,width: 200.w,height:200.h ,)
                        :Icon(Icons.add_box_outlined,size: 50.r,color: green,)


                    ),
                  ),
                )
            ),
            )
          ),
            textFormFieldProduct(name: "Title",hint: "Enter Title",lins: 1,),
            textFormFieldProduct(name: "Price",hint: "Enter Price",lins: 1,),
            textFormFieldProduct(name: "Describe",hint: "Enter Product Describe",lins: 5,),
            SizedBox(height: 5.h,),
            InkWell(
            onTap: ()
            {
              setState(() {
                ProductCubit.get(context).AddProduct(CreateProduct(description: "hjgfz",title: "momo",price: 600,categoryId: 300,images: ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQo23tYn4lKpHQfnMMHNWcf3pSMyg3wNQrJT2yFJSHA&s"]));

              });
            },
              child: Container(
                height: 70.h,
                width: 300.w,
                child: Center(child: Text("Create",style: TextStyle(color: Colors.white,fontSize: 18.sp),),),
                decoration: BoxDecoration(
                  color: green,
                  borderRadius: BorderRadius.circular(20).r
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
