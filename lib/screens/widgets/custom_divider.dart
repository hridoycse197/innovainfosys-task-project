import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  double height;
  double width;
   CustomDivider({
   required this.height,required this.width
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: Color(0xff404040),
      width:width,
    );
  }
}
