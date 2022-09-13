import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final double width;
  final double height;

  TopBar(this.width, this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: Colors.grey,
    );
  }
}
