import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../widgets/custom_space_widget.dart';
import '../../widgets/custom_text_widget.dart';

class Customcardgrid extends StatelessWidget {
  String celcius;
  String imagePath;
  String title;
  String count;
  Customcardgrid({required this.celcius, required this.count, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .4,
      alignment: Alignment.center,
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xffe2ecef),
      ),
      child: Column(children: [
        Row(
          children: [
            Container(
              height: 30,
              width: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff447381),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextWidget(
                  text: '$celcius\u02DAc',
                  fontSize: 14,
                  fontColor: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        Image.asset(imagePath),
        CustomTextWidget(
          text: title,
          fontSize: 14,
          fontWeight: FontWeight.bold,
          fontColor: const Color(0xff404040),
        ),
        SpaceVertical(vertical: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Color(0xffFFE266),
              ),
              child: CustomTextWidget(
                text: count,
                fontSize: 12,
                fontColor: Colors.black,
              ),
            ),
            CustomTextWidget(
              text: ' devices',
              fontSize: 12,
              fontWeight: FontWeight.normal,
              fontColor: const Color(0xff404040),
            ),
          ],
        ),
      ]),
    );
  }
}
