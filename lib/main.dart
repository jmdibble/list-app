import "package:flutter/material.dart";

import "./product_manager.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.deepPurple,
          accentColor: Colors.deepOrange
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Easy List"),
          ),
          body: ProductManager()
      ),
    );
  }
}
