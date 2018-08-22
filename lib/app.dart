import 'package:flutter/material.dart';
import 'home.dart';
import 'color.dart';
class Movie extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    final ThemeData _customeTheme = _buildCustomeTheme();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: _customeTheme
    );
  }

  ThemeData _buildCustomeTheme() {
    final ThemeData base = ThemeData.dark();
    return base.copyWith(
      primaryColor: kShrineAltDarkGrey,
      accentColor: kShrineAltYellow,
      textTheme:_buildCustomeTextTheme(base.textTheme),
      primaryTextTheme: _buildCustomeTextTheme(base.primaryTextTheme)
    );
  }

  _buildCustomeTextTheme(TextTheme base) {
    return base.copyWith(

      ).apply(
      displayColor: kShrineSurfaceWhite,
      bodyColor: kShrineAltYellow
    );
  }



}