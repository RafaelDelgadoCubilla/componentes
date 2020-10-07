import 'package:flutter/material.dart';

final Map<String,IconData> mapaIconos = {
  'add_alert' : Icons.add_alert,
  'accessibility' : Icons.accessibility,
  'folder_open' : Icons.folder_open
};

Icon getIcono (String iconoJson){
  final Icon miIcono = Icon(
    mapaIconos[iconoJson],
    color: Colors.blue
  );
  return miIcono;
}