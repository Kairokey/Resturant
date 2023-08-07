import 'package:flutter/material.dart';
import 'package:training/Constant/app%20cloors.dart';
class textFormFieldProduct extends StatelessWidget {
  String?name;
  String? hint;
  int? lins;
  textFormFieldProduct({this.name,this.hint,this.lins});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 5.0,left: 25,right: 25),
      child: Column(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Text( name!,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,
                color:green,fontFamily: "Poppins", ),)),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: TextFormField(
              maxLines: lins!,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  hoverColor: Colors.grey,
                  hintText: hint!,
                  hintStyle: TextStyle(color: Colors.grey),

              ),

            ),
          ),



        ],
      ),
    );
  }
}