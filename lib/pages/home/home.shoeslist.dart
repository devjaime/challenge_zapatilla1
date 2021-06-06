import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeShoesList extends StatefulWidget {
  HomeShoesList() : super();

  @override
  _HomeShoesListState createState() => _HomeShoesListState();
}

class _HomeShoesListState extends State<HomeShoesList> {
  List<Map> shoes = [
     {
      "name": "Nike Air Max 270 React",
      "image": "nike_4.png",
      "cost": "\$ 270.00",
      "isFav": false,
    },
    {
      "name": "Nike Air Max 97",
      "image": "nike_5.png",
      "cost": "\$ 299.00",
      "isFav": true,
    },
    {
      "name": "Nike Vibrant Red",
      "image": "nike_6.png",
      "cost": "\$ 199.00",
      "isFav": false,
    },
    {
      "name": "Nike Vibrant Red",
      "image": "nike_8.png",
      "cost": "\$ 199.00",
      "isFav": false,
    },
    {
      "name": "Nike Air Max 270 React",
      "image": "nike_2.png",
      "cost": "\$ 299.00",
      "isFav": false,
    },
    {
      "name": "Nike Air Max 97",
      "image": "nike_1.png",
      "cost": "\$ 270.00",
      "isFav": true,
    },
    {
      "name": "Nike Max 10",
      "image": "nike_3.png",
      "cost": "\$ 450.00",
      "isFav": true,
    },
   
    {
      "name": "Nike Vibrant Red",
      "image": "nike_9.png",
      "cost": "\$ 199.00",
      "isFav": false,
    },
    {
      "name": "Nike Vibrant Red",
      "image": "nike_10.png",
      "cost": "\$ 199.00",
      "isFav": false,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GlowingOverscrollIndicator(
      axisDirection: AxisDirection.down,
      color: Colors.black,
      child: ListView.builder(
        itemCount: shoes.length,
        itemBuilder: (context, i) {
          Map currentShoe = shoes[i];
          return Container(
            padding: EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 30),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(
                  30,
                )),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                      )),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 130,
                        child: Image.asset("assets/images/${currentShoe['image']}"),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "${currentShoe['name']}",
                        style: GoogleFonts.spartan(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: Colors.black,
                              fontSize: 16,
                              letterSpacing: -1),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "${currentShoe['cost']}",
                        style: GoogleFonts.spartan(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 14,
                              letterSpacing: -1),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    ));
  }
}
