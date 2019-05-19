import 'package:flutter_web/material.dart';

class Font {
  final String fontFamily;

  const Font({this.fontFamily = 'Open Sans'});

  TextStyle getStyle({double size = 12.0, Color color = Colors.black}) {
    return TextStyle(fontFamily: fontFamily, fontSize: size, color: color);
  }

  static Font get openSans => Font();
  static Font get merriweather => Font(fontFamily: 'Merriweather');
}
