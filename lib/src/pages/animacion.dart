import 'dart:math';

import 'package:flutter/material.dart';

class Animacion extends StatefulWidget {
  @override
  _AnimacionState createState() => _AnimacionState();
}

class _AnimacionState extends State<Animacion> {
  @override
  Widget build(BuildContext context) {
    final rnd = Random();
    final r = rnd.nextInt(255);
    final g = rnd.nextInt(255);
    final b = rnd.nextInt(255);
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          // child: Icon(Icons.shopping_cart),
          duration: Duration(
            milliseconds: 1500,
          ),
          curve: Curves.bounceInOut,
          width: r.toDouble(),
          height: g.toDouble(),
          decoration: BoxDecoration(color: Color.fromRGBO(r, g, b, 1)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pinkAccent,
        child: Icon(Icons.umbrella),
        onPressed: () {
          setState(() {});
        },
      ),
    );
  }
}
