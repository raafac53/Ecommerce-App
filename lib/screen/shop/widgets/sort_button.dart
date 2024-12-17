import 'package:flutter/material.dart';

class sort_button extends StatelessWidget {
  const sort_button({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     
      margin: EdgeInsets.only(left: 8),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
    
        
        borderRadius: BorderRadius.circular(20),
        color: Colors.orange
      ),
      child: Icon(Icons.tune,color: Colors.white,size: 25,),
    );
  }
}