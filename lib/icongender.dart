import 'package:flutter/material.dart';
import 'cokors.dart';

class IconGender extends StatelessWidget {
  IconGender(
      {@required this.icon, this.title, this.colorcheck, this.colorborder});

  final AssetImage icon;
  final String title;
  final Color colorcheck;
  final Color colorborder;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 170,
      decoration: BoxDecoration(
          color: gray,
          border: Border.all(
            color: colorborder,
          width: 3,
          )),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 120, bottom: 130),
            child: IconButton(
                icon: Icon(
                  Icons.check_circle,
                  size: 30,
                  color: colorcheck,
                ),
                onPressed: () {}),
          ),
          Column(
            //      mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageIcon(
                icon,
                color: white,
                size: 110,
              ),
              SizedBox(
                height: 19,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  color: white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
