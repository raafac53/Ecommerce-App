import 'package:flutter/material.dart';

class searchbox extends StatelessWidget {
  const searchbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        
        decoration: InputDecoration(
          hintText: "search",
          contentPadding: EdgeInsets.all(8),
          prefixIcon: Icon(Icons.search),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.grey.shade200)
          ),
          focusedBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.grey.shade200)
          ),
          
      ),
    ),
    );
  }
}