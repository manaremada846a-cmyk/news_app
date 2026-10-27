import 'package:flutter/material.dart';

extension WidgetsExtensions on Widget {
  Widget symatricPadding({
    double vertical = 0.0,
    double horizontal = 0.0,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: vertical,
        horizontal: horizontal,
      ),
      child: this,
    );
  }
Widget allPadding({
    double value=0.0,
  }) {
    return Padding(
      padding: EdgeInsets.all(
      value=value,
         
      ),
      child: this,
    );
  }
Widget onlyPadding({
  
  double top = 0.0,
   double bottom = 0.0,
  double right = 0.0,
   double left = 0.0,
 
  }) {
    return Padding(
      padding: EdgeInsets.only(  
    top :top,
     bottom :bottom,
  right : right,
  left :left,
),
      child: this,
    );
  }

  
}