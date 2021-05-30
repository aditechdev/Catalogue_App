import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
       final int days = 30;

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Center(
          child: Container(
            child: Text("Hello WOrld $days" ),
          ),
        ),
      );
  
      
  
  }
}