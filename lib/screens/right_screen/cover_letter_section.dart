import 'package:flutter/material.dart';

const String _cover_letter1 =
    'Sou uma pessoa que ama esportes e aventuras na natureza, como fazer trilhas até cachoeiras ou picos. Sou músico desde criança e me mantenho praticando este hobby com instrumentos de corda e percussão.';
const String _cover_letter2 =
    'Gosto muito de conversar e conhecer pessoas novas. Creio que isso guia muito a minha personalidade e meu dia a dia, pois sempre estou fazendo novos contatos e trocando experiências.';
const String _titulo1 = 'Carta de';
const String _titulo2 = 'Apresentação';

class CoverLetterSection extends StatelessWidget {
  const CoverLetterSection({
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
      padding: const EdgeInsets.all(16.0),
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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const <Widget>[
          Text(
            _titulo1,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 32,
              color: Colors.black,
              wordSpacing: 3,
              letterSpacing: 1,
            ),
          ),
          Text(
            _titulo2,
            style: TextStyle(
              fontSize: 32,
              color: Colors.black,
              fontWeight: FontWeight.w900,
              letterSpacing: 1,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Center(
              child: Divider(
                height: 5,
                color: Colors.black,
              ),
            ),
          ),
          Text(
            _cover_letter1,
            textAlign: TextAlign.center,
            overflow: TextOverflow.clip,
            style: TextStyle(
              wordSpacing: 2,
              letterSpacing: 1,
            ),
          ),
          Text(
            _cover_letter2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.clip,
            style: TextStyle(
              wordSpacing: 2,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    );
  }
}
