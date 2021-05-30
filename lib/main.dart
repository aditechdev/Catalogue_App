import 'package:flutter/material.dart';
import 'package:flutter_catalogue/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),

      // routes: {

      // },
    );
  }
}
