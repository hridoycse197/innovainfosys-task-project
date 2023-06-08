import 'package:abdulkader/screens/homepage/homepageview.dart';
import 'package:abdulkader/screens/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../itemdetailscreen/item_details_screen.dart';
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
      bottomNavigationBar: bottomnavbar(),
      body: getCurrentPage(),
    );
  }

  Container bottomnavbar() {
    return Container(
      height: 80.0,
      color: const Color(0xff447381),
      padding: const EdgeInsets.all(5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            flex: 1,
            child: MaterialButton(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () {
                setState(() {
                  currentIndex = 0;
                });
                //  print(menuC.currentIndex.value);
              },
              textColor: const Color(0xFFF6FAFC),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  ImageIcon(
                    AssetImage('assets/png/home fill.png'),
                    color: Colors.white,
                    size: 24.0,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'HOME',
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 8.5,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: MaterialButton(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () {
                setState(() {
                  currentIndex = 1;
                });

                //  print(menuC.currentIndex.value);
              },
              textColor: const Color(0xFFF6FAFC),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  ImageIcon(
                    AssetImage('assets/png/tabbar.png'),
                    color: Colors.white,
                    size: 24.0,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Smart',
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 8.5,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: MaterialButton(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () {
                setState(() {
                  currentIndex = 2;
                });

                //  print(menuC.currentIndex.value);
              },
              textColor: const Color(0xFFF6FAFC),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  ImageIcon(
                    AssetImage('assets/png/pie.png'),
                    color: Colors.white,
                    size: 24.0,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Usage',
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 8.5,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: MaterialButton(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () {
                setState(() {
                  currentIndex = 3;
                });

                //  print(menuC.currentIndex.value);
              },
              textColor: const Color(0xFFF6FAFC),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  ImageIcon(
                    AssetImage('assets/png/user.png'),
                    color: Colors.white,
                    size: 24.0,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Profile',
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 8.5,
                      color: Colors.white,
                    ),
                  ),
                ],
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
        return ItemDetailsScreenView();
      case 1:
        return SmartHomeScreenView();
      case 2:
        return PowerUsageScreenView();
      case 3:
        return ActiveDeviceScreenView();
      case 4:
        return AllRoomScreenView();

      case 5:
        return HomePageView();
        ;
      default:
        return Center(child: CustomTextWidget(fontSize: 20, text: 'page 6'));
    }
  }
}
