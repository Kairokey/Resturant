import 'package:flutter/material.dart';
import 'package:training/Constant/app%20cloors.dart';
class CustomButton extends StatelessWidget {
  String? name;
  var onTap;
  CustomButton({this.name,this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap ,
      child: Container(
        height: 70,
        width: 350,
        child:Center(
          child: Text(name!,style: TextStyle(fontSize: 20
              ,fontFamily: "Poppins",fontWeight: FontWeight.bold,color: Colors.white),),
        ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: green
          ),
      ),
    );
  }
}
