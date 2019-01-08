<<<<<<< HEAD
import "package:flutter/material.dart";

import "../product_manager.dart";

class ProductsPage extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function addProduct;
  final Function deleteProduct;

  ProductsPage(this.products, this.addProduct, this.deleteProduct);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text("Choose"),
              ),
              ListTile(
                title: Text("Manage Products"),
                onTap: () {
                  Navigator.pushReplacementNamed(context, "/admin");
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Easy List"),
        ),
        body: ProductManager(products, addProduct, deleteProduct));
  }
}
=======
import "package:flutter/material.dart";

import "../product_manager.dart";
import "./products_admin.dart";

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text("Choose"),
              ),
              ListTile(
                title: Text("Manage Products"),
                onTap: () {
                  Navigator.pushReplacementNamed(context, "/admin");
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Easy List"),
        ),
        body: ProductManager());
  }
}
>>>>>>> f3fe99e07f8272ab7b01b235d6f000118c878884
