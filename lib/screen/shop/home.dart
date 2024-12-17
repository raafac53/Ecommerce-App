import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/shop/account/screens/user.dart';
import 'package:flutter_application_1/screen/shop/cart/screens/cart.dart';
import 'package:flutter_application_1/screen/shop/shop.dart';
import 'package:flutter_application_1/screen/shop/wishlist/screens/wishlist.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
  
}

class _HomescreenState extends State<Homescreen> {
  int  _selectedpage=0;

  List<Widget> pagelist=[

    const shopscreen(),
    const wishlistscreen(),
    const cartscreen(),
    const userscreen()
  
  ];
  void update(int index){
    setState(() {
      _selectedpage=index;

  
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:pagelist[_selectedpage] ,
    bottomNavigationBar:
     BottomNavigationBar(
      onTap: update,
      selectedItemColor: Colors.orange,
    
type: BottomNavigationBarType.fixed,
      
    
     
     items:
      [
        const BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: 'shop'),
        const BottomNavigationBarItem(icon: Icon(Icons.favorite_outline),label: 'wishlist'),
         const BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined), // Corrected icon
            label: 'Shop',
          ),
           const BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined), // Corrected icon
            label: 'account',
          ),


      
    
    
    ],),
    
    );
  }
}