
import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider{
  
  List<dynamic> opciones = [];

  _MenuProvider(){
    //_cargarData();
  }

  Future<List<dynamic>> cargarData() async{
    final respuesta= await rootBundle.loadString('data/menu_opts.json');
    
    Map dataMap = json.decode(respuesta);
    //print (dataMap);
    final opciones = dataMap['rutas'];

    return opciones;
  }
}

final menuprovider = _MenuProvider();