import 'package:flutter/material.dart';
import 'package:training/Constant/app%20cloors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class textFormField extends StatelessWidget {
String?name;
bool? secure;
String? hint;
var icon;
var controller;
var validate;
textFormField({this.name,this.hint,this.secure,this.icon,this.controller,this.validate});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Text( name!,style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.w500,
                  color:green, ),)),
       TextFormField(
         controller: controller,
            obscureText:secure!,
            validator:validate ,
            decoration: InputDecoration(
              hoverColor: Colors.grey,
              suffixIcon:Icon(
                  icon!,color: Colors.grey,),
              hintText: hint!,
              hintStyle: TextStyle(color: Colors.grey)
            ),
          ),

        ],
      ),
    );
  }
}
