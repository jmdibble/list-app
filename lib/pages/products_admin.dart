<<<<<<< HEAD
import "package:flutter/material.dart";

import "./products.dart";
import "./product_create.dart";
import "./product_list.dart";

class ProductsAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text("Choose"),
              ),
              ListTile(
                title: Text("All Products"),
                onTap: () {
                  Navigator.pushReplacementNamed(context, "/");
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Products Manager"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.create),
                text: "Create Product",
              ),
              Tab(
                icon: Icon(Icons.list),
                text: "My Products",
              ),
            ],
          ),
        ),
        body: TabBarView(children: <Widget> [
          ProductCreatePage(),
          ProductListPage(),
        ],
        ),
      ),
    );
  }
}
=======
import "package:flutter/material.dart";

import "./products.dart";
import "./product_create.dart";
import "./product_list.dart";

class ProductsAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text("Choose"),
              ),
              ListTile(
                title: Text("All Products"),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) => ProductsPage()),
                  );
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Products Manager"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.create),
                text: "Create Product",
              ),
              Tab(
                icon: Icon(Icons.list),
                text: "My Products",
              ),
            ],
          ),
        ),
        body: TabBarView(children: <Widget> [
          ProductCreatePage(),
          ProductListPage(),
        ],
        ),
      ),
    );
  }
}
>>>>>>> f3fe99e07f8272ab7b01b235d6f000118c878884
