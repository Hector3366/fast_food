import 'package:fast_food/screens/welcome.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String nombre = "";
  final nombreController = TextEditingController();

  @override
  void dispose() {
    nombreController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text("Login"),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Welcome()),
                    );
                  });
            },
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Image(
              image: AssetImage('assets/images/auten.png'),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  'Ingresa tus credenciales \naceptadas para acceder',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'popins',
                    decoration: TextDecoration.none,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
                child: TextField(
                  controller: nombreController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      hintText: 'Email',
                      prefixIcon: Icon(Icons.mail),
                      hintStyle:
                          TextStyle(fontSize: 14.0, color: Colors.black26)),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 25, right: 20, left: 20),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      hintText: 'Contraseña',
                      prefixIcon: Icon(Icons.enhanced_encryption)),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 40, right: 30, left: 30),
                child: TextButton(
                  onPressed: () {
                    nombre = nombreController.text;
                    print("El nombre es: $nombre");
                  },
                  child: Text(
                    'CONTINUAR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'popins',
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.redAccent)),
                ),
              ),
            ),
          ],
        )));
  }
}
