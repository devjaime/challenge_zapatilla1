import 'package:flutter/material.dart';
import 'package:challenge_shoes/pages/home/home.shoeslist.dart';
import 'package:challenge_shoes/pages/home/home.header.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: _homeAppBar(),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)
              )
            ),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    ),
                child: HomeHeader()),
              Container(
               
                child: HomeShoesList()),
              
            ],
          ),
        ),
        );
  }

  AppBar _homeAppBar() {
    return AppBar(
      
        elevation: 0,
        backgroundColor: Colors.white,
        
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 20
          ),
          child: Container(
          width: 35,
          height: 35,
          decoration:
              BoxDecoration(
                color: Colors.black, 
                shape: BoxShape.circle,
                ),
          child: Center(
            child: Text("3",
                style: GoogleFonts.spartan(
                  textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                )),
          )),
        ),
        actions: [
  
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.black, size: 35),
          ),
          SizedBox(width:10),
          

        ],
      );
  }
}
