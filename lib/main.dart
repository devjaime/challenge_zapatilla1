import 'package:flutter/material.dart';
import 'package:challenge_shoes/pages/detail/detail.shoes.page.dart';
import 'package:challenge_shoes/pages/home/home.page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
        '/detail': (context)=> DetailShoesPage()
      }
    );
  }
}
