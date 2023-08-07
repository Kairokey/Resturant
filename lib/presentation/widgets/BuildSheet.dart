import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training/Constant/app%20cloors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:training/presentation/moduels/CatImage.dart';

import '../moduels/Product.dart';

class displayBottomSheet extends StatefulWidget {
  @override
  State<displayBottomSheet> createState() => _sheetState();
}

class _sheetState extends State<displayBottomSheet> {
  int count = 0;
  int Price = 0;
  var TotalPrice;
  increment(index) {
    pro[index].counter++;
    pro[index].total = pro[index].price * pro[index].counter;
    // print(pro[index].price+'  '+ pro[index].name);
  }

  decrement(index) {
    pro[index].counter--;
    pro[index].total = pro[index].price * pro[index].counter;

//    print(pro[index].price+'  '+ pro[index].name);
  }

  List<Product> pro = [
    Product(
      name: "Platillo Example",
      imgurl: "images/emiliano-vittoriosi-OFismyezPnY-unsplash.png",
      counter: 1,
      price: 150,
    ),
    Product(
      name: "Platillo Example",
      imgurl: "images/brooke-lark-1Rm9GLHV0UA-unsplash.png",
      counter: 1,
      price: 50,
    ),
  ];
  List<Cat> cat=
  [
    Cat(catimage: "images/burger.png",color: 0xFFCAE9F7,name: "Burger"),
    Cat(catimage: "images/Group.png",color: 0xFFCAF7D6,name: "Carne"),
    Cat(catimage: "images/donut.png",color: 0xFFF7D0CA,name: "Postres"),
    Cat(catimage: "images/soup.png",color: 0xFFF1ECCA,name: "Sopa"),
    Cat(catimage: "images/fried chicken.png",color: 0xFFCCCAF1,name: "fried chicken"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: Align(
        alignment: Alignment.topLeft,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 40),
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const CircleAvatar(
                        backgroundColor: green,
                        child: Icon(Icons.close),
                      )),
                  const SizedBox(
                    width: 60,
                  ),
                  SvgPicture.asset(
                    "icons/shopping-basket (1).svg",
                    color: green,
                    height: 25,
                    width: 25,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Tu canasta",
                    style: TextStyle(color: green, fontSize: 20),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 250,
              child: ListView.builder(
                  itemCount: pro.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Row(
                          children: [
                            Container(
                              height: 80,
                              width: 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(150)),
                              child: Image.asset(
                                pro[index].imgurl!,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20.0, top: 40),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    pro[index].name.toString(),
                                    style:
                                        TextStyle(color: green, fontSize: 18),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text(
                                      "\$${pro[index].total == null ? pro[index].price.toString() : pro[index].total.toString()}",
                                      style: TextStyle(
                                          color: green,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Container(
                              height: 85,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                  color: Colors.grey.shade600,
                                ),
                              ),
                              child: Container(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4.0),
                                      child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              increment(index);
                                            });
                                          },
                                          child: Icon(
                                            Icons.add,
                                            size: 25,
                                          )),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "${pro[index].counter.toString()}"
                                          .toString(),
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 2.0),
                                      child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              decrement(index);
                                            });
                                          },
                                          child: Icon(
                                            Icons.minimize,
                                            size: 28,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),

            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text("Busca algo más",style:TextStyle(color: green,fontSize: 18) ,),
                )),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Container(
                height: 140,
                child: ListView.builder(
                  itemCount: cat.length,
                      scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index)
                {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Center(
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            child: Image.asset(cat[index].catimage!),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Color(cat[index].color),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(cat[index].name!,style: TextStyle(color: green,fontSize: 15),)
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text("Total a cobrar:",style: TextStyle(color: green,fontSize: 18),),
                )),
            Row(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text("pago con tarjeta",style: TextStyle(color: Colors.grey,fontSize: 15),),
                    )),
                Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(left:180.0,bottom:8),
                      child: Text("\$85.00 ",style: TextStyle(color: green,fontSize: 18,fontWeight: FontWeight.bold),),
                    )),

              ],
            ),
            SizedBox(height: 130,),
            Container(
              height: 70,
              width: 370,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(50)
              ),
              child: Row(
                  children: [
                    SizedBox(width: 40,),
                    Container(
                      height: 40,
                      width: 40,
                      child: Center(child: Text("${count.toString()}",style: TextStyle(fontSize: 20,color: Colors.white),)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.amber

                      ),
                    ),
                    SizedBox(width: 20,),
                    Text("Ir a pagar",style: TextStyle(color: Colors.white,fontSize: 15),),
                    VerticalDivider(color: Colors.white,width: 80,indent: 11,endIndent: 11,thickness: 3,),
                    Text("\$ 200",style: TextStyle(color: Colors.white,fontSize: 15),)


                  ]),

            ),
          ],
        ),
      ),
    );
  }
}
