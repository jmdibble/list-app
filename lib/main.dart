import "package:flutter/material.dart";

import "./product_manager.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Easy List"),
          ),
          body: ProductManager("Food Tester")),
    );
  }
}
