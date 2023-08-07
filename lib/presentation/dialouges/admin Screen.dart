import 'package:flutter/material.dart';
import 'package:training/Constant/app%20cloors.dart';
import 'package:training/presentation/dialouges/CreatProduct.dart';
import 'package:training/presentation/dialouges/DeleteProduct.dart';
class AdminScreen extends StatefulWidget {
  const AdminScreen({super.key});

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  int index=0;
  List views=
  [
    CreatProductScreen(),DeleteProductScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (v)
        {
          setState(() {
          index=v;
          });
        },
        currentIndex: index,
        selectedItemColor: green,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.create_new_folder_outlined),label: "Create Product"),
          BottomNavigationBarItem(icon: Icon(Icons.delete),label: "Delete Product"),

        ],),
        body: views[index],
    );
  }
}
