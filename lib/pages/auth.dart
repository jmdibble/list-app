<<<<<<< HEAD
import "package:flutter/material.dart";

import "./products.dart";

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log in"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Log in"),
          onPressed: () {
            Navigator.pushReplacementNamed(context, "/");
          },
        ),
      ),
    );
  }
}
=======
import "package:flutter/material.dart";

import "./products.dart";

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log in"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Log in"),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (BuildContext context) => ProductsPage()),
            );
          },
        ),
      ),
    );
  }
}
>>>>>>> f3fe99e07f8272ab7b01b235d6f000118c878884
