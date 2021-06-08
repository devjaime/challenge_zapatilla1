import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeHeader extends StatefulWidget {
  HomeHeader() : super();

  @override
  _HomeHeaderState createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 35, top: 35, right: 30, bottom: 35),
      child: Container(
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Catalog",
              style: GoogleFonts.spartan(
                  textStyle: TextStyle(
                      fontSize: 36,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -3)),
            ),
           
          ],
        ),
      ),
    );
  }
}
