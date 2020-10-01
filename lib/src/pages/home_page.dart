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
    return ListView(
      children: _crearElementos()
    );
  }

  List<Widget> _crearElementos() {
    final lista = new List<Widget>();

    lista.add(ListTile(
      title: Text('Hola Mundo!'),
    ));
    lista.add(Divider());
    lista.add(ListTile(
      title: Text('Hola Mundo!'),
    ));
    lista.add(Divider());
    lista.add(ListTile(
      title: Text('Hola Mundo!'),
    ));
    lista.add(Divider());
    return lista;
  }
}