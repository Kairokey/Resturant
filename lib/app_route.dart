import 'package:flutter/material.dart';
import 'package:training/Constant/Screens.dart';
import 'package:training/presentation/dialouges/CategoryScreen/CategoryScreenView.dart';
import 'package:training/presentation/dialouges/CreatProduct.dart';
import 'package:training/presentation/dialouges/DeleteProduct.dart';
import 'package:training/presentation/dialouges/HomeScreen/HomeScreenView.dart';
import 'package:training/presentation/dialouges/IntroScreen.dart';
import 'package:training/presentation/dialouges/RegisterScreen.dart';
import 'package:training/presentation/dialouges/SignInScreen.dart';
import 'package:training/presentation/dialouges/SplashScreen.dart';
import 'package:training/presentation/dialouges/admin%20Screen.dart';

class AppRoutes
{
  Route? onGenerateRoute(RouteSettings routeSettings)
  {
switch(routeSettings.name!)
    {
  case '/':
    return MaterialPageRoute(builder: (_)=>SplashScreen());
  case introscreen:
    return MaterialPageRoute(builder: (_)=>IntroScreen());
  case signin:
    return MaterialPageRoute(builder:  (_)=>SignIn());
  case register:
    return MaterialPageRoute(builder: (_)=>RegisterScreen());
  case homescreen:
    return MaterialPageRoute(builder: (_)=>HomeScreen());
  case categoryscreen:
    return MaterialPageRoute(builder: (_)=>CategoryScreen());
  case adminScreen:
    return MaterialPageRoute(builder: (_)=>AdminScreen());
  case createProduct:
    return MaterialPageRoute(builder: (_)=>CreatProductScreen());
  case deleteProduct:
    return MaterialPageRoute(builder: (_)=>DeleteProductScreen());
}

  }
}