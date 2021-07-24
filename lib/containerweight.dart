import 'package:flutter/material.dart';

import 'cokors.dart';

class ContainerWeight extends StatelessWidget {
    ContainerWeight({@required this.numbr,this.height,this.width,this.onPressedminimize,this.onPressedadd});

  final int numbr;
  final double height;
    final double width;
final onPressedminimize;
final onPressedadd;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      height: height,
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 35,
            width: 35,
            child: FloatingActionButton(
              onPressed: onPressedminimize,
              backgroundColor: black,
              child: Icon(
                Icons.minimize,
                color: white,
                size: 30,
              ),
            ),
          ),
          Text(
      "$numbr",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 35,
            width: 35,
            child: FloatingActionButton(
              onPressed: onPressedadd,
              backgroundColor: black,
              child: Icon(
                Icons.add,
                color: white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
