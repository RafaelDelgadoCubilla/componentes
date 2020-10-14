import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Column(
        children: [
          _crearSlider(),
          _checkbox(),
          _crearSwitch(),
          Expanded(
            child: _crearImagen()
          ),
        ],)
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: _bloquearCheck ? null : (valor) {
        setState(() {
          _valorSlider=valor;
        });
      }
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('https://images-na.ssl-images-amazon.com/images/I/413CVsIYPWL._AC_.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _checkbox() {
    return CheckboxListTile(
      value: _bloquearCheck, 
      onChanged: (valor){
        setState(() {
          _bloquearCheck=valor;
        });
      });
  }

  Widget _crearSwitch() {
    return Switch(
      value: _bloquearCheck, 
      onChanged: (valor){
        setState(() {
          _bloquearCheck=valor;
        });
      });
  }
}