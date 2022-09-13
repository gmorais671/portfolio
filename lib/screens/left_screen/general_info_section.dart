import 'package:flutter/material.dart';

class GeneralInfoSection extends StatelessWidget {
  const GeneralInfoSection({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    bool borderSize = false;

    if (width >= height) {
      borderSize = true;
    } else {
      borderSize = false;
    }
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        border: Border.all(
          color: Colors.transparent,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            borderSize ? height * 0.3 : width * 0.3,
          ),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InfoItem(Icons.person_rounded, 'Gabriel Morais Marcondes'),
          InfoItem(Icons.phone, '+55  (19) 991261738'),
          InfoItem(Icons.cake, '13.11.1999'),
          InfoItem(Icons.email, 'gmorais671@gmail.com'),
          InfoItem(Icons.location_on_rounded, 'São Paulo - SP, Brasil'),
        ],
      ),
    );
  }
}

class InfoItem extends StatelessWidget {
  final IconData icon;
  final String value;

  InfoItem(this.icon, this.value);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: Colors.black,
          size: 20.0,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
