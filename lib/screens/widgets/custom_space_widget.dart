import 'package:flutter/material.dart';

class SpaceVertical extends StatelessWidget {
  double vertical;
   SpaceVertical({
  required this.vertical
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: vertical,
    );
  }
}
class SpaceHorizontal extends StatelessWidget {
  double horizontal;
   SpaceHorizontal({
  required this.horizontal
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: horizontal,
    );
  }
}