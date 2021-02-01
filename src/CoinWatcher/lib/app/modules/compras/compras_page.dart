import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'compras_controller.dart';

class ComprasPage extends StatefulWidget {
  final String title;
  const ComprasPage({Key key, this.title = "Compras"}) : super(key: key);

  @override
  _ComprasPageState createState() => _ComprasPageState();
}

class _ComprasPageState extends ModularState<ComprasPage, ComprasController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
