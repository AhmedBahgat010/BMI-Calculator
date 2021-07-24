import 'package:bml/containerweight.dart';
import 'package:flutter/material.dart';
import 'cokors.dart';
import 'icongender.dart';
import 'ScreenTow.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int pageIndex = 0;
  int weight = 56;
  int height = 162;
  int age = 29;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        actions: [
          FlatButton(
            onPressed: () {},
            child: Icon(
              Icons.add_alert_sharp,
              color: white,
              size: 35,
            ),
          ),
        ],
        backgroundColor: black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "Bml Calculator",
              style: TextStyle(
                  color: white, fontSize: 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Gender",
              style: TextStyle(
                color: gray2,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      pageIndex = 0;
                    });
                  },
                  child: IconGender(
                    colorcheck: pageIndex == 0 ? green : gray2,
                    colorborder: pageIndex == 0 ? green : gray2,
                    icon: AssetImage("images/mule.png"),
                    title: "Male",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      pageIndex = 1;
                    });
                  },
                  child: IconGender(
                    colorcheck: pageIndex == 1 ? green : gray2,
                    colorborder: pageIndex == 1 ? green : gray2,
                    icon: AssetImage("images/2.png"),
                    title: "Female",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              "Weight",
              style: TextStyle(
                color: gray2,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ContainerWeight(
              onPressedminimize: () {
                setState(() {
                  weight--;
                });
              },
              onPressedadd: () {
                setState(() {
                  weight++;
                });
              },
              numbr: weight,
              height: 50,
              width: 250,
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              "Height",
              style: TextStyle(
                color: gray2,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ContainerWeight(
              onPressedminimize: () {
                setState(() {
                  height--;
                });
              },
              onPressedadd: () {
                setState(() {
                  height++;
                });
              },
              numbr: height,
              height: 50,
              width: 250,
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              "Age",
              style: TextStyle(
                color: gray2,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ContainerWeight(
              onPressedminimize: () {
                setState(() {
                  age--;
                });
              },
              onPressedadd: () {
                setState(() {
                  age++;
                });
              },
              numbr: age,
              height: 50,
              width: double.infinity,
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>ScreenTow(),),);
              },
              child: Container(
                child: Center(
                    child: Text(
                  "Calculate",
                  style: TextStyle(
                    fontSize: 30,
                    //   fontWeight: FontWeight.bold,
                    color: white,
                  ),
                )),
                color: green,
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                height: 55,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
