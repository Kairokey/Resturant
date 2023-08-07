import 'package:flutter/material.dart';
import 'package:training/Constant/Screens.dart';
import 'package:training/Constant/app%20cloors.dart';
import 'package:training/Constant/icons.dart';
import 'package:training/data/models/UserModel.dart';
import 'package:training/domain/Cupit/Product/user_cubit.dart';
import 'package:training/presentation/widgets/CustomButton.dart';
import 'package:training/presentation/widgets/Signbutton.dart';
import 'package:training/presentation/widgets/TextFormField.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class RegisterScreen extends StatelessWidget {
  GlobalKey<FormState>key1=GlobalKey<FormState>();
  TextEditingController emailCon=TextEditingController();
  TextEditingController passwordCon=TextEditingController();
  TextEditingController nameCon=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       body: SingleChildScrollView(
         child: BlocConsumer<UserCubit, UserState>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
    return Form(
           key: key1,
           child: Column(
             children: [
               Container(
                 height: 100.h,
                 width: double.infinity,
                 color: green,
                 child: Center(
                   child: Padding(
                     padding: const EdgeInsets.only(top: 25.0),
                     child: Text("REGISTER",style: TextStyle(
                       letterSpacing: 5,color: Colors.white,fontSize: 22.sp,
                       fontWeight: FontWeight.bold,fontFamily: "Poppins"
                     ),),
                   ),
                 ),
               ),
               SizedBox(height: 5.h,),
               Text("New here?",style: TextStyle(color:green,fontSize: 18.sp,fontFamily: "Poppins")
                 ,),
               Text("Fill in the fields and join us!",style: TextStyle(color:green,fontSize: 18.sp,fontFamily: "Poppins"),),
               Padding(
                 padding: const EdgeInsets.only(top: 5.0),
                 child: textFormField(name: "N A M E",hint: 'Enter Your Name',secure: false,icon: Icons.verified_user,controller: nameCon,
                   validate: (value)
                   {
                     if (value.isEmpty) {
                       return 'Enter name';
                     } else {
                       return null;
                     }
                   },
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(top:5.0),
                 child: textFormField(name: "E M A I L",hint:"psilva.ericka@gmail.com" ,icon: Icons.email,controller: emailCon,
                   secure:false ,validate: (value)
                   {
                     if (value.isEmpty) {
                       return 'Enter Address';
                     } else {
                       return null;
                     }

                   },),
               ),
               textFormField(name: "P A S S W O R D",hint: '***********',secure: true,icon: Icons.vpn_key_rounded,controller: passwordCon,
               validate: (value)
               {
                 if (value.isEmpty) {
                   return 'Enter Passsword';
                 } else if (value.length < 6) {
                   return 'Password must be more than 6';
                 } else {
                   return null;
                 }
               },
               ),

               SizedBox(height: 20.h,),
               CustomButton(name: 'REGISTER',onTap: ()

               {
                 if (key1.currentState!.validate()) {
                   UserCubit.get(context).CreateUser(UserModel(email: emailCon.text,name:nameCon.text,password: passwordCon.text,avatar: "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",role: 'admin'));
                   Navigator.pushNamed(context, signin);
                 }
               },),
               SizedBox(height: 10.h,),
               Text("OR",style: TextStyle(color:green,fontSize: 18.sp,fontFamily: "Poppins"),),
               SizedBox(height: 10.h,),
               SignButtons(color:Colors.white ,
                 name: "Register with Facebook",backcolor: Colors.blue[900],picpath: facebook,ontap:(){}, ),
                SizedBox(height: 20.h,),
                SignButtons(color: Colors.black,name: "Register with Google",
                backcolor: Colors.white,picpath: google,ontap: (){},)


             ],
           ),
         );
  },
),
       ),
        ),
    );
  }
}
