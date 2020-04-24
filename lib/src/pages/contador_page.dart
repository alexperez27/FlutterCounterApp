import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final TextStyle _estiloTexto = new TextStyle(fontSize: 25);
  int _conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Título'), centerTitle: true),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Número de clicks:', style: _estiloTexto),
              Text('$_conteo', style: _estiloTexto),
            ],
          ),
        ),
        floatingActionButton: _crearBotones(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat);
  }

  Widget _crearBotones() {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      SizedBox(width: 10),
      FloatingActionButton(
        onPressed: _reset,
        child: Icon(Icons.exposure_zero),
      ),
      Expanded(child: SizedBox()),
      FloatingActionButton(
        onPressed: _sustraer,
        child: Icon(Icons.remove),
      ),
      SizedBox(width: 10),
      FloatingActionButton(
        onPressed: _agregar,
        child: Icon(Icons.add),
      )
    ]);
  }

  void _agregar() {
    _conteo++;
    setState(() => {});
    // setState(() => _conteo++);
  }

  void _sustraer() {
    setState(() => _conteo--);
  }

  void _reset() {
    setState(() => _conteo = 0);
  }
}
