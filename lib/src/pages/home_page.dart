import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icons_string_utils.dart';
import 'package:componentes/src/utils/rutas_strings_utils.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _crearLista(),
    );
  }

  Widget _crearLista() {
    //print (menuprovider.opciones);
    return FutureBuilder(
      future:menuprovider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot){
        //print(snapshot.data);
        return ListView(
          children: _crearElementos(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _crearElementos(List<dynamic> data, context){
    
    final List<Widget> opciones = [];
    
    data.forEach((opt) {
      final widgetTemporal = ListTile(
        title: Text(opt['texto']),
        //leading: Icon(Icons.account_circle, color: Colors.blue),
        leading: getIcono(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: (){
          //getRuta(opt['ruta']);
          final route = MaterialPageRoute(
            builder: (context) {
              return getRutas(opt['ruta']);
            });
          Navigator.push(context, route);
        },
      );

      opciones..add(widgetTemporal)
              ..add(Divider());
    });

    return opciones;
  }
}