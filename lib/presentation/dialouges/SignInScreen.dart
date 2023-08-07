import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:training/Constant/Images.dart';
import 'package:training/Constant/Screens.dart';
import 'package:training/Constant/app%20cloors.dart';
import 'package:training/data/models/UserModel.dart';
import 'package:training/domain/Cupit/Product/user_cubit.dart';
import 'package:training/presentation/widgets/CustomButton.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/TextFormField.dart';
class SignIn extends StatelessWidget {
GlobalKey<FormState>keySign=GlobalKey<FormState>();
    TextEditingController emailControl=TextEditingController();

  SignIn({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: BlocConsumer<UserCubit, UserState>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
    return Column(
      children: [
        Form(
              key: keySign,
              child: Column(
                children: [
                  SizedBox(height: 100.h,),
                  const Image(image: AssetImage(signinImage,),height: 100,width: 300,),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Welcome to VIVEE",style: TextStyle(fontSize: 20,fontFamily: "Poppins",color: green),),
                  ),
                  const Text("helping you to find the best food",style: TextStyle(fontSize: 15,color: Colors.grey),),
                  SizedBox(height: 30.h,),
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                    child: textFormField(name: "E M A I L",hint:"psilva.ericka@gmail.com" ,icon: Icons.email,
                      secure:false ,controller: emailControl,
                      validate:(value)
                      {
                        String pattern =
                            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                        RegExp regExp = RegExp(pattern);
                        if (value.isEmpty) {
                          return 'Enter Email';
                        } else if (!regExp.hasMatch(value.toString().trim())) {
                          return 'Invalid Email';
                        } else {
                          return null;
                        }
                      } ,),
                  ),
                  textFormField(name: "P A S S W O R D",hint: '***********',secure: true,icon: Icons.vpn_key_rounded,

                  ),
                  SizedBox(height: 10.h,),
                  CustomButton(name: "LOG IN",onTap: (){

                    if (keySign.currentState!.validate())
                    {
                    UserCubit.get(context).CheckUser(UserModel(email: emailControl.text));
                    Navigator.pushNamed(context, homescreen);
                    }
                    },
                   ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Do not have an account?",style: TextStyle(color: green,fontSize: 17.sp,fontFamily: "Poppins"),),
                        SizedBox(width: 10.w,),
                        InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, register);
                            },
                            child: Text("REGISTER",style:
                            TextStyle(color: green,fontSize: 18.sp,
                                fontFamily: "Poppins",fontWeight: FontWeight.bold),),),
                      ],
                    ),
                  )
                ],
              ),
            ),
      ],
    );
  },
),
      ),
    );
  }
}
