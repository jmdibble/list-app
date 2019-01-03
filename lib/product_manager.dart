import "package:flutter/material.dart";

import "./products.dart";

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager(this.startingProduct) {
    print("[ProductManager Widget] Constructor");
  }

  @override
  State<StatefulWidget> createState() {
    print("[ProductManager Widget] CreateState()");
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    print("[ProductManager State] initState()");
    super.initState();
    _products.add(widget.startingProduct);
  }

  @override
  Widget build(BuildContext context) {
    print("[ProductManager State] build()");
    return Column(children: [Container(
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(
        onPressed: () {
          setState(() {
            _products.add("Advanced Food Tester");
          });
        },
        child: Text("Add Product"),
      ),
    ),
    Products(_products)
    ],);
  }
}
