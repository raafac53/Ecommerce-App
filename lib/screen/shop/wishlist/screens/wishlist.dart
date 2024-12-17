import 'package:flutter/material.dart';

class wishlistscreen extends StatefulWidget {
  const wishlistscreen({super.key});

  @override
  State<wishlistscreen> createState() => _wishlistscreenState();
}

class _wishlistscreenState extends State<wishlistscreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Wishlist"),
      ),
    );
  }
}