import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/pages/home_page.dart';
import 'package:food_delivery_app_ui/pages/start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery App',
      theme: ThemeData(
       fontFamily: 'Roboto'
     
      ),
      home: StartPage()
    
    );
  }
}

