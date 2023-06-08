import 'package:abdulkader/screens/homepage/homepageview.dart';
import 'package:abdulkader/screens/livingroomscreen/living_room_screen.dart';
import 'package:abdulkader/screens/widgets/custom_space_widget.dart';
import 'package:abdulkader/screens/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import "package:persistent_bottom_nav_bar/persistent_tab_view.dart";
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../itemdetailscreen/item_details_screen.dart';
import '../activedevicescreen/active_device_screen.dart';
import '../allroomscreen/all_room_screen.dart';
import '../powerusagescreen/power_usage_screen.dart';
import '../smarthomescreen/smart_home_screen.dart';
import '../splashscreen/splash_screen.dart';
import '../widgets/bottom_nav_bar.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff447381),
      body: getCurrentPage(),
      bottomNavigationBar: bottomnavbar(),
    );
  }

  bottomnavbar() {
    return Container(
      height: 90.0,
      color: const Color(0xff447381),
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = 0;
              });
            },
            child: Expanded(
              flex: currentIndex == 0 ? 2 : 1,
              child: Container(
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                alignment: Alignment.center,
                height: 80,
                width: currentIndex == 0 ? 120 : 80,
                child: currentIndex != 0
                    ? const ImageIcon(
                        AssetImage('assets/png/home fill.png'),
                        color: Color(0xff4C7380),
                        size: 30.0,
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const ImageIcon(
                            AssetImage('assets/png/home fill.png'),
                            color: Color(0xff4C7380),
                            size: 30.0,
                          ),
                          SpaceHorizontal(horizontal: 10),
                          CustomTextWidget(
                            text: 'HOME',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontColor: Color(0xff4C7380),
                          ),
                        ],
                      ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = 1;
              });
            },
            child: Expanded(
              flex: currentIndex == 1 ? 2 : 1,
              child: Container(
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                alignment: Alignment.center,
                height: 80,
                width: currentIndex == 1 ? 120 : 80,
                child: currentIndex != 1
                    ? const ImageIcon(
                        AssetImage('assets/png/tabbar.png'),
                        color: Color(0xff4C7380),
                        size: 30.0,
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const ImageIcon(
                            AssetImage('assets/png/tabbar.png'),
                            color: Color(0xff4C7380),
                            size: 30.0,
                          ),
                          SpaceHorizontal(horizontal: 10),
                          CustomTextWidget(
                            text: 'Smart',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontColor: Color(0xff4C7380),
                          ),
                        ],
                      ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = 2;
              });
            },
            child: Expanded(
              flex: currentIndex == 2 ? 2 : 1,
              child: Container(
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                alignment: Alignment.center,
                height: 80,
                width: currentIndex == 2 ? 120 : 80,
                child: currentIndex != 2
                    ? const ImageIcon(
                        AssetImage('assets/png/pie.png'),
                        color: Color(0xff4C7380),
                        size: 30.0,
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const ImageIcon(
                            AssetImage('assets/png/pie.png'),
                            color: Color(0xff4C7380),
                            size: 30.0,
                          ),
                          SpaceHorizontal(horizontal: 10),
                          CustomTextWidget(
                            text: 'Usage',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontColor: Color(0xff4C7380),
                          ),
                        ],
                      ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = 3;
              });
            },
            child: Expanded(
              flex: currentIndex == 3 ? 2 : 1,
              child: Container(
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                alignment: Alignment.center,
                height: 80,
                width: currentIndex == 3 ? 120 : 80,
                child: currentIndex != 3
                    ? const ImageIcon(
                        AssetImage('assets/png/user.png'),
                        color: Color(0xff4C7380),
                        size: 30.0,
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const ImageIcon(
                            AssetImage('assets/png/user.png'),
                            color: Color(0xff4C7380),
                            size: 30.0,
                          ),
                          SpaceHorizontal(horizontal: 10),
                          CustomTextWidget(
                            text: 'User',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontColor: Color(0xff4C7380),
                          ),
                        ],
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getCurrentPage() {
    switch (currentIndex) {
      case 0:
        return HomePageView();
      case 1:
        return SmartHomeScreenView();
      case 2:
        return PowerUsageScreenView();
      case 3:
        return LivingRoomScreenView();

      default:
        return Center(child: CustomTextWidget(fontSize: 20, text: 'page 6'));
    }
  }
}
