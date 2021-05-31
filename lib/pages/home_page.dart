import 'package:flutter/material.dart';
import 'package:flutter_catalogue/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;

  @override
  Widget build(BuildContext context) {
    var myDrawer = MyDrawer();
    var scaffold = Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Center(
        child: Container(
          child: Text("Hello WOrld $days hii "),
        ),
      ),
      drawer: MyDrawer(),
    );
    return scaffold;
  }
}
