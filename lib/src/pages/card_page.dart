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
          _cardTipo1(),
          _cardTipo2(),
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

  Widget _cardTipo2() {
    final tarjeta = Container(
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage('https://iso.500px.com/wp-content/uploads/2014/06/W4A2827-1-3000x2000.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            //height: 400,
            fit: BoxFit.fill
            ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('No sé lo que poner'),
          )
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0), 
        color: Colors.red,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.red,
            blurRadius:2.0,
            spreadRadius: 1.0,
            offset: Offset(-1, -1) 
          )
        ]
      ),
      child: ClipRRect(
        child: tarjeta,
      ),
    );
  }
}