import 'package:fast_food/screens/Registro.dart';
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
              child: Row(
                children: [
                  Center(
                      child: Padding(
                          padding: const EdgeInsets.only(top: 3, left: 70),
                          child: Text(
                            '¿Aún no tienes una cuenta?',
                          ))),
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Registro()),
                        );
                      },
                      child: Text(
                        'Consigue una',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'popins',
                          color: Colors.red,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  )),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: FlatButton(
                  minWidth: 365.0,
                  height: 60.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (_) => new AlertDialog(
                              title: new Text("BIENVENIDO"),
                              content: new Text("$nombre"),
                              actions: <Widget>[
                                FlatButton(
                                  child: Text('Cerrar'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                )
                              ],
                            ));
                    nombre = nombreController.text;
                    print("El nombre es: $nombre");
                  },
                  color: Colors.red,
                  child: Text(
                    'CONTINUAR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'popins',
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        )));
  }
}
