import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card')
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          _cardTipo1()
        ],
      )
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album, color:Colors.blue),
            title: Text('Título de la tarjeta'),
            subtitle: Text('Subtítulo de la tarjeta')
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                onPressed: null, 
                child: Text('Cancelar'),
              ),
              FlatButton(
                onPressed: null, 
                child: Text('Ok'),
              )
            ],
          )
        ],
      )
    );
  }
}