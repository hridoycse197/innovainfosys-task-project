import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../widgets/custom_space_widget.dart';
import '../../widgets/custom_text_widget.dart';

class CustomCard extends StatelessWidget {
  String imagePath;
  String percentange;
  String title;
  String titletrailing;
  CustomCard({required this.imagePath, required this.titletrailing, required this.percentange, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xffe2ecef),
      ),
      child: FittedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    imagePath,
                    height: 25,
                  ),
                ),
                SpaceHorizontal(horizontal: 5),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: percentange, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                      TextSpan(text: titletrailing, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
                  ),
                )
              ],
            ),
            SpaceVertical(vertical: 5),
            CustomTextWidget(
              text: title,
              fontSize: 15,
              fontColor: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
