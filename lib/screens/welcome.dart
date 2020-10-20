import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 249, 239),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage('assets/images/balloon-shape.png'),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Image(
                image: AssetImage('assets/images/FastFood-Logo.png'),
              ),
            ),
          ),
          Center(
            child: Image(
              image: AssetImage('assets/images/online_groceries.png'),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Text(
                'El directorio de comida',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'popins',
                  decoration: TextDecoration.none,
                  color: Colors.black38,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 130),
              child: Text(
                'Busca. Encuentra. Pide.\n     Recibe. Disfruta',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'popins',
                  decoration: TextDecoration.none,
                  color: Colors.black26,
                ),
              ),
            ),
          ),
          Center(
            child: FlatButton(
              minWidth: 340.0,
              height: 60.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {},
              color: Colors.red,
              child: Text(
                'INICIAR AHORA',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'popins',
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
