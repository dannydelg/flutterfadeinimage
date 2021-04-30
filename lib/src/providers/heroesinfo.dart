import 'package:flutter/material.dart';

class HeroesInfo with ChangeNotifier {

  String _heroe = 'Capitan América';
  int _age = 23;

  get heroe => _heroe;

  get ageheroe => _age;

  set heroe(String nombre) {
    this._heroe = nombre;
    notifyListeners();
  }

  set ageheroe(int age) {
    this._age = age;
    notifyListeners();
  }
  
}
