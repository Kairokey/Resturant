import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:training/Constant/app%20cloors.dart';
class SignButtons extends StatelessWidget {
var picpath;
String? name;
var color;
var ontap;
var backcolor;
SignButtons({this.picpath,this.name,this.color,this.ontap,this.backcolor});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),

          color: backcolor,
        ),
        height: 70,
        width: 350,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
            children: [
            SvgPicture.asset(picpath,height: 50,width: 50,),
              SizedBox(width: 30,),
              Text(name!,style: TextStyle(fontSize: 18,
                  fontFamily: 'Poppins',color: color),),
            ],

          ),
        ),
      ),
    );
  }
}
