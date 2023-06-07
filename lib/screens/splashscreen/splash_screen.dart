import 'package:abdulkader/screens/mainpage/main_page.dart';
import 'package:abdulkader/screens/widgets/custom_space_widget.dart';
import 'package:abdulkader/screens/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xff4C7380),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(image: DecorationImage(fit: BoxFit.fill, image: AssetImage('assets/png/Splash Screen.png'))),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SpaceVertical(vertical: kToolbarHeight),
          CustomTextWidget(text: 'smartme', fontSize: 16),
          SpaceVertical(vertical: 40),
          CustomTextWidget(text: 'Wellcome Home', fontSize: 28, fontWeight: FontWeight.bold),
          SpaceVertical(vertical: 10),
          CustomTextWidget(
            text: 'no matter how far you go,home will be your destination to return to.let\'s make your home comfortable',
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          SpaceVertical(vertical: 80),
          Image.asset('assets/png/splash_banner.png'),
          SpaceVertical(vertical: 80),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => MainPage(),
              ));
            },
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width - 40,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xff9A7265), boxShadow: [
                BoxShadow(color: Color(0xff000000).withOpacity(.2), offset: Offset(0, 2), blurRadius: 6, spreadRadius: 1)
              ]),
              height: 52,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextWidget(
                    text: 'Get Started',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  Image.asset('assets/png/next.png')
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
