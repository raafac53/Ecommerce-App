import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/authantication/screens/log_in.dart';
import 'package:flutter_application_1/screen/shop/home.dart';
void main(){
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Homescreen(),
    );
  }
}