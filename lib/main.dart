import 'package:flutter/material.dart';
import 'package:portfolio/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.from(
        colorScheme: _colors,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }

  static const ColorScheme _colors = ColorScheme(
    brightness: Brightness.dark,
    background: Colors.black87,
    onBackground: Colors.black87,
    primary: Colors.deepOrangeAccent,
    onPrimary: Colors.deepOrange,
    secondary: Colors.blueAccent,
    onSecondary: Colors.blue,
    error: Colors.redAccent,
    onError: Colors.red,
    surface: Colors.grey,
    onSurface: Colors.black87,
  );
}
