import 'package:flutter/material.dart';
import 'package:portfolio/components/top_bar/top_bar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopBar(width, height * 0.1),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: width * 0.49,
                  height: height * 0.89,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('Esquerda'),
                  ),
                ),
                Container(
                  width: width * 0.002,
                  height: height * 0.65,
                  color: Colors.white,
                ),
                Container(
                  width: width * 0.49,
                  height: height * 0.89,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('Direita'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
