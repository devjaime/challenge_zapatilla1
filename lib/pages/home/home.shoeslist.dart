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
      child: Container(

        decoration: BoxDecoration(
        color: Colors.grey.shade300,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30)
          )
        ),
        child: Container(
          
          child: GridView.builder(
            
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
             crossAxisCount: 2,
            ),
            itemCount: shoes.length,
            itemBuilder: (context, i) {
              Map currentShoe = shoes[i];
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/detail', arguments: currentShoe);
                },
                
                child: Padding(
                  padding: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
                  child: Container(
                   
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(
                          25,
                        )),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  currentShoe['isFav'] = !currentShoe['isFav'];
                                });
                              },
                              icon: Icon(
                                currentShoe['isFav']
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: Colors.black,
                              )),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 130,
                                child: Image.asset(
                                    "assets/images/${currentShoe['image']}"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "${currentShoe['name']}",
                                style: GoogleFonts.spartan(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black,
                                      fontSize: 10,
                                      letterSpacing: -1),
                                ),
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              Text(
                                "${currentShoe['cost']}",
                                style: GoogleFonts.spartan(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                      fontSize: 5,
                                      letterSpacing: -1),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    ));
  }
}
