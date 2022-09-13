import 'package:flutter/material.dart';
import 'package:portfolio/screens/left_screen/general_info_section.dart';

class LeftContent extends StatelessWidget {
  const LeftContent({Key? key}) : super(key: key);

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
            Container(
              width: width * 0.18,
              height: width * 0.18,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(
                  color: Colors.transparent,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(width * 0.18),
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(2, 2),
                    blurRadius: 6,
                    spreadRadius: 1,
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-2, -2),
                    blurRadius: 2,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: const CircleAvatar(
                radius: 80,
                backgroundImage:
                    AssetImage('../../../assets/images/profile_image.jpeg'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GeneralInfoSection(height: width * 0.1, width: width * 0.2),
          ],
        ),
      ),
    );
  }
}
