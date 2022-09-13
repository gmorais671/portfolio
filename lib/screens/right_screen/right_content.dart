import 'package:flutter/material.dart';
import 'package:portfolio/screens/right_screen/cover_letter_section.dart';

class RightContent extends StatelessWidget {
  const RightContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 80,
            ),
            CoverLetterSection(height: width * 0.3, width: width * 0.3)
          ],
        ),
      ),
    );
  }
}
