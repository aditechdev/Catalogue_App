import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
       final int days = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
        body: Center(
          child: Container(
            child: Text("Hello WOrld $days hii " ),
          ),
        ),
        drawer: Drawer(),
      );
  
      
  
  }
}