import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailShoesPage extends StatefulWidget {
  DetailShoesPage();

  @override
  _DetailShoesPageState createState() => _DetailShoesPageState();
}

class _DetailShoesPageState extends State<DetailShoesPage> {
  var passedShoe={};
  @override
  Widget build(BuildContext context) {
    passedShoe = ModalRoute.of(context)!.settings.arguments! as Map;
    print(passedShoe['image']);
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.blue,
      appBar: _detailsApp(context),
      body: Column(
        children: [
          _shoeContainer(),
          _logo(),
          _shoeName(),
          _shoeCost(),
          _sizeLabel()
        ],
      ),
    );
  }
  
  Widget _sizeLabel(){
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Size"),
          Text("Size Guide")
        ],
      ),
    );
  }
  Widget _shoeCost(){
    return Text("${passedShoe['cost']}",
    style: GoogleFonts.spartan(
      textStyle: TextStyle(
        fontSize: 30,
        color: Colors.black,
        fontWeight: FontWeight.w600,
        letterSpacing: -3,
      )
    ),
    
    );
  }
  
  Widget _shoeName(){
    return Text("${passedShoe['name']}",
    style: GoogleFonts.spartan(
      textStyle: TextStyle(
        fontSize: 36,
        color: Colors.black,
        fontWeight: FontWeight.w700,
        letterSpacing: -3,
      )
    ),
    
    );
  }
  Widget _logo(){
    return SizedBox(
      height: 30,
      child: SvgPicture.asset("assets/svgs/nike.svg"),
    );
  }
  
  Container _shoeContainer(){
    return Container(
      padding: EdgeInsets.only(
        top: 80,
        bottom: 50,
        left: 60, 
        right: 65
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(70),
          bottomRight: Radius.circular(70)
        )
      ),
      child: SizedBox(
          height: 180,
          child: Image.asset("assets/images/${passedShoe['image']}"),
        
      )
    );
  }
  AppBar _detailsApp(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Padding(
        padding: EdgeInsets.only(
          left: 20,
        ),
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon( 
            Icons.chevron_left,
            color: Colors.black,
            size: 35,
          ),
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 30,),
          child: IconButton(
            onPressed: () {
              
            },
            icon: SvgPicture.asset("assets/svgs/2dots.svg"),
          ),
        )
      ],
    );
  }
}
