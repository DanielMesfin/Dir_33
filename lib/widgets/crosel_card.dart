

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';


class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {

final List<String> imageList = [
  "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
  "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
  "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
  "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
  "https://cdn.pixabay.com/photo/2019/12/22/04/18/x-mas-4711785__340.jpg",
  "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
];

 return GFCarousel(
  autoPlay: true,
  hasPagination: true,
  activeIndicator: Colors.green,
  passiveIndicator: Colors.yellow,
    items: imageList.map(
     (url) {
     return Container(
       margin: EdgeInsets.all(8.0),
       child: ClipRRect(
         borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Image.network(
             url,
             fit: BoxFit.cover,
              width: 1000.0
           ),
        ),
      );
      },
     ).toList(),
    onPageChanged: (index) {
      setState(() {
        index;
      });
    },
 );

  }
}