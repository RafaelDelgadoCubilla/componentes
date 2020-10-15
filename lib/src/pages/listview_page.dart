import 'dart:async';

import 'package:flutter/material.dart';


class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  
  ScrollController _scrollController = new ScrollController();
  List<int> _lista = new List<int>();
  int _ultimoItem = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();  
    _agregar10();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent)
      {
        //_agregar10();
        _fetchData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas')
      ),
      body: Stack(
        children: [
          _crearLista(),
          _crearLoading(),
        ],
      ),
    );
  }

  Widget _crearLista() {
    return RefreshIndicator(
        onRefresh: obtenerPagina1,
        child: ListView.builder(
        controller: _scrollController,
        itemCount: _lista.length,
        itemBuilder: (BuildContext context, int index){

          return FadeInImage(
            fit: BoxFit.fitWidth,
            placeholder: AssetImage('assets/jar-loading.gif'), 
            image: NetworkImage('https://picsum.photos/id/${_lista[index]}/300/200'),
          );
        }
      ),
    );
  }

  void _agregar10()
  {
    for (var i = 1; i < 10; i++) {
      _ultimoItem++;
      _lista.add(_ultimoItem);
    }

    setState(() {});
  }

  Future<void> _fetchData() async{
    _isLoading=true;
    setState(() {});

    final duration = Duration(seconds: 2);
    return Timer(duration, _respuestaHTTP);
  }

  void _respuestaHTTP(){
    _isLoading = false;
    //setState(() {}); Ya está en _agregar10
    
    _scrollController.animateTo(
      _scrollController.position.pixels+100,
      duration: Duration(milliseconds: 250), 
      curve: Curves.fastOutSlowIn,
    );

    _agregar10();
  }

  Widget _crearLoading() {
    if (_isLoading){
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator()
            ],
          ),
          SizedBox(width: 15.0,)
        ],
      );
    }
    else return Container();
  }

  Future<void> obtenerPagina1() async{
    final duration = Duration (seconds: 2);
    new Timer(duration, (){
      _lista.clear();
      _ultimoItem++;
      _agregar10();
    });

    return Future.delayed(duration);
  }
}