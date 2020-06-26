import 'package:flutter/material.dart';

class CustomStyle {
  CustomStyle(Material createbutton);

  static Material createbutton(
      {String title,
      Color color,
      Color shadowColor,
      Color textColor,
      Function function,
      double width, Future<Null> Function() onPressed, Text textSize, int fontSize}) {
    return new Material(
      borderRadius: BorderRadius.circular(10.0),
      color: color,
      shadowColor: shadowColor,
      elevation: 8.0,
      child: MaterialButton(
        child: Text(
          title,
          style: TextStyle(color: textColor, fontSize: 12.0),
        ),
        minWidth: width,
        onPressed: () {
          function();
        },
      ),
    );
  }

  static TextStyle setTextStyle(
      {Color color, FontStyle fontstyle, double size, String fontFamily}) {
    return new TextStyle(
        color: color,
        fontStyle: fontstyle,
        fontSize: size,
        fontFamily: fontFamily);
  }

  static TextStyle setTextDefaultStyle() {
    return new TextStyle(
        color: Colors.white, fontStyle: FontStyle.normal, fontFamily: '');
  }
}
