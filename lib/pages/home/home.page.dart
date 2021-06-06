import 'package:flutter/material.dart';
import 'package:challenge_shoes/pages/home/home.shoeslist.dart';
import 'package:challenge_shoes/pages/home/home.header.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: _homeAppBar(),
        body: Column(
          children: [
            HomeHeader(),
            HomeShoesList(),
            
          ],
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
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.short_text,
              color: Colors.black,
              size: 28,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.black, size: 28),
          ),
          SizedBox(width:10),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.sort, color: Colors.black, size: 28),
          ),
          SizedBox(width: 20,),
          Container(
              margin: EdgeInsets.only(
                right: 30
              ),
              width: 35,
              height: 35,
              decoration:
                  BoxDecoration(color: Colors.black, shape: BoxShape.circle),
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
        ],
      );
  }
}
