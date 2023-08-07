import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
class SwiperImages extends StatelessWidget {
  List? images;
  SwiperImages({super.key, this.images});
  List image = [
    "images/1000_F_133675666_plaH39IsR3bw7MNK9PbGCoAIJLtNUNj9.jpg",
    "images/pexels-photo-9394680.jpeg",
    "images/image.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
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
              images![index],
              fit: BoxFit.cover,
            ),
          );
        },
        itemCount:images!.length,
      ),
    )
    ;
  }
}
