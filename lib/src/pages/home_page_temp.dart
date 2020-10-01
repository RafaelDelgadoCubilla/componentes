import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['Uno', 'Dos', 'Tres'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: ListView(
        //children: _crearListTiles(),
        children: _crearListTilesCorta(),
      )
    );
  }

  List<Widget> _crearListTiles(){
    List<Widget> _lista = new List<Widget>();
    for (var opt in opciones) {
      ListTile temporal = new ListTile(
        title: Text(opt),
      );
      _lista..add(temporal);
      _lista..add(Divider());
    }
    return _lista;
  }

  List<Widget> _crearListTilesCorta(){
    //var lista = opciones.map(( item ) {
    return opciones.map(( item ) {
      final elemento = new Column(
        children: [ListTile(
          title: Text(item),
          subtitle: Text('Subtítulo $item'),
          leading: Icon(Icons.ac_unit),
          trailing: Icon(Icons.arrow_right),
          onTap: (){
          },),
          Divider()],
      );

      return elemento;
    }).toList();
    //return lista; 
  }
}

