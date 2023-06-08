import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  double height;Color color;
  double width;
   CustomDivider({
   required this.height,required this.width,required  this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: color,
      width:width,
    );
  }
}
