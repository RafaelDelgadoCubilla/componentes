import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert')),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar Alerta'),
          textColor: Colors.white,
          onPressed: (){
            mostrar(context);
          }
        )
      ),
      
    );
  }

  void mostrar(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder:(context){
        return AlertDialog(
          title: Text('Título'),
          content:Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Texto de la Alerta'),
              FlutterLogo()
            ],), 
          actions: [
            FlatButton(
              child: Text('Cancelar'),
              onPressed: Navigator.of(context).pop, 
            ),
            FlatButton(
              child: Text('Ok'),
              onPressed: Navigator.of(context).pop, 
            )
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          )
        );
      }
    );
  }
}