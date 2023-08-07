import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:training/Constant/Screens.dart';
import 'package:training/Constant/app%20cloors.dart';
import 'package:flutter_svg/svg.dart';
import 'package:group_button/group_button.dart';
import 'package:training/presentation/moduels/ClassProduct.dart';
import 'package:training/presentation/widgets/BuildSheet.dart';
import 'package:like_button/like_button.dart';



class CategoryScreen extends StatefulWidget {
  String? CategoryName;
  int? Price;
  List? images;
  CategoryScreen({this.CategoryName,this.Price,this.images});
  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}
class _CategoryScreenState extends State<CategoryScreen> {
  Product? product;
  bool? isfovorit=false;
 String? opcion;
  int count=00;
  double price=70.000;
  double totalprice=0.0;
  void increment()
  {
   setState(() {
     count++;
     totalprice=count*price;
   });
  }
  void decrement()
  {
    setState(() {
      count--;
      totalprice=count*price;
    });
  }
  List image = [
    "images/1000_F_133675666_plaH39IsR3bw7MNK9PbGCoAIJLtNUNj9.jpg",
    "images/pexels-photo-9394680.jpeg",
    "images/image.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(children: [

            Container(
              alignment: Alignment.topCenter,
              height: 300,
              width: double.infinity,
              child: Swiper(

                itemBuilder: (context, index) {
                  return Container(
                    height: 300,
                    width: double.infinity,
                    color: Colors.amber,
                    child: Image.network(
                  widget.images![index],
                      fit: BoxFit.cover,
                    ),
                  );
                },
                itemCount:widget.images!.length,
              ),
            ),
            Positioned(
              top: 180,
              left: 20,
              child: InkWell(
                onTap: ()
                {
                  setState(() {
                  });
                },
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    color: Colors.white54,
                  borderRadius: BorderRadius.circular(100)
                  ),
                  child: Icon(Icons.keyboard_arrow_left,color: green,),
                ),
              ),
            ),
            Positioned(
              top: 180,
              right: 20,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(100)
                ),
                child: Icon(Icons.keyboard_arrow_right,color: green,),
              ),
            ),
            Positioned(
              top: 50,
              left: 40,
              child: InkWell(
                onTap: ()
                {
                  Navigator.pushNamed(context, homescreen);
                },
                child: Container(
                  height: 40,
                  width: 40,
                  child: Icon(Icons.close,color: Colors.white,size: 30,),
                  decoration: BoxDecoration(
                    color: green.withOpacity(0.40),
                    borderRadius: BorderRadius.circular(100)
                  ),
                ),
              ),
            ),

            Positioned(
              top: 50,
              right: 40,
              child: Container(
                height: 40,
                width: 40,
                child: Icon(Icons.share,color: Colors.white,size: 25,),
                decoration: BoxDecoration(
                    color: green.withOpacity(0.50),
                    borderRadius: BorderRadius.circular(100)
                ),
              ),
            ),
            Positioned(
              top: 250,
              child: Container(
                height: 200,
                width: 415,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 220,
              left: 280,
              child: Container(
                height: 60,
                width: 60,
                child: Center(child: LikeButton(
                  circleColor: CircleColor(start: Colors.white, end: Colors.red),
                  bubblesColor: BubblesColor(dotPrimaryColor: Colors.white, dotSecondaryColor: Colors.red),
                  bubblesSize: 200,
                )
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.redAccent,
                ),
              ),
            )
          ]),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 22.0),
                child: Text(
                   widget.CategoryName!,
                  style: TextStyle(
                      color: green, fontSize: 20, fontWeight: FontWeight.bold),
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 25, right: 25),
            child: Row(
              children: [
                Text(
                  "\$${totalprice.toString()}",
                  style: TextStyle(color: Colors.green, fontSize: 25),
                ),
                SizedBox(
                  width: 150,
                ),
                InkWell(
                  onTap: ()
                  {
                    setState(() {
                      decrement();
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.only(bottom: 100.0),
                      child: Icon(
                        Icons.minimize_outlined,
                        color: Colors.green,
                        size: 16,
                      ),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: green, width: 3)),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "${count.toString()}",
                  style: TextStyle(
                      color: green, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: ()
                  {
                    setState(() {
                      increment();
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 16,
                      ),
                    )),
                    decoration: BoxDecoration(
                        color: green,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: green, width: 3)),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Lorem ipsum dolor sit amet, "
              "consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt "
              "ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero",
              style: TextStyle(fontSize: 15, color: green),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                child: Text(
                  "Elige tamaño",
                  style: TextStyle(
                      color: green, fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                child: SvgPicture.asset(
                  "icons/checklist.svg",
                  height: 25,
                  width: 25,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment.topLeft,
              height: 50,
              width: 400,
              color: Colors.white,
              child: GroupButton(
                options: GroupButtonOptions(
                  alignment: Alignment.topLeft,
                  borderRadius: BorderRadius.circular(50),
                  spacing: 15,
                  selectedBorderColor: Colors.grey,
                  selectedColor: green,
                  unselectedBorderColor: Colors.grey,
                ),
                buttons: ["CH", "MD", "GD", "FM"],
                isRadio: true,
              ),
            ),
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 25.0, left: 25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Elige complemento",
                      style: TextStyle(
                        color: green,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      "Selecciona hasta dos opciones",
                      style: TextStyle(
                        color: green,
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.start,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0, left: 30),
                child: Container(
                  height: 50,
                  width: 140,
                  child: Center(
                    child: Text(
                      "Obligatorio",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.lightGreenAccent,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Stack(
              children:[ Container(
              height: 180,
              width: double.infinity,
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(top: 8.0, left: 20, right: 20),
                      child: Container(
                        height: 70,
                        width: 280,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Text(
                                "Opcion 1",
                                style: TextStyle(color: green, fontSize: 18),
                              ),
                            ),
                            SizedBox(width: 200,),
                            Radio(value: "", groupValue: opcion,
                                onChanged: (String? value)
                                {
                                  setState(() {
                                    opcion=value;

                                  });
                                })
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    );
                  }),
            ),
                Positioned(
                  left: 20,
                  top:110,
                  child: InkWell(
                    onTap: ()
                    {
                      showModalBottomSheet(
                        //   useRootNavigator:true,
                          showDragHandle: true,
                          isScrollControlled: true,
                          context: context,
                          builder: (context) =>  displayBottomSheet());
                    },
                    child: Container(
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
                           Text("Mi cesta",style: TextStyle(color: Colors.white,fontSize: 15),),
                           VerticalDivider(color: Colors.white,width: 80,indent: 10,endIndent: 10,thickness: 3,),
                           Text("\$ ${totalprice.toString()}",style: TextStyle(color: Colors.white,fontSize: 15),)


                          ]),

                    ),
                  ),
                )
    ]
          ),
        ],
      ),
    );
  }
}
