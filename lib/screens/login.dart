import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text("Login"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(64.0),
          child: Text("Ingresa turs credenciales"),
        ),
      ),
    );
  }
}
