import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:flutter/material.dart';

final Map<String,Widget> mapaRutas = {
  'alert' : AlertPage(),
  'avatar' : AvatarPage(),
  //'card' : CardPage(),
};

Widget getRutas (String rutaJson){
  return mapaRutas[rutaJson];
}