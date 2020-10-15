import 'package:flutter/material.dart';

final Map<String,IconData> mapaIconos = {
  'add_alert' : Icons.add_alert,
  'accessibility' : Icons.accessibility,
  'folder_open' : Icons.folder_open,
  'donut_large' : Icons.donut_large,
  'input' : Icons.input,
  'tune' : Icons.tune,
  'list' : Icons.list,
};

Icon getIcono (String iconoJson){
  final Icon miIcono = Icon(
    mapaIconos[iconoJson],
    color: Colors.blue
  );
  return miIcono;
}