

import 'cokors.dart';
import 'package:flutter/material.dart';
class ScreenTow extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),
      body: Container(
        color: Colors.green,
        child: RaisedButton(child: Text(' one 1'),onPressed: (){
          Navigator.of(context).pushNamed('/second');
        },),
      ),
    );
  }
}