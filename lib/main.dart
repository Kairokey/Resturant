import 'package:flutter/material.dart';
import 'package:training/Constant/BlockOpserver.dart';
import 'package:training/app_route.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:training/domain/Cupit/Product/product_cubit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training/domain/Cupit/Product/user_cubit.dart';
void main()
{
  Bloc.observer=SimpleBlocObserver();
  runApp(
      const MyApp()
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        BlocProvider(create:(context)=>ProductCubit()..productList),
        BlocProvider(create:(context)=>UserCubit()),

      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (BuildContext context, Widget? child) {
          return MaterialApp(
          // ignore: deprecated_member_use
          useInheritedMediaQuery: true,

        onGenerateRoute:AppRoutes().onGenerateRoute );
        }
        ),
    );

  }
}
