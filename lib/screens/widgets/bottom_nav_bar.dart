import 'package:abdulkader/screens/mainpage/main_page.dart';
import 'package:flutter/material.dart';

class BottomNavigationComponent extends StatelessWidget {
  MainPage x = MainPage();
  @override
  Widget build(BuildContext context) {
    return 
    Container(
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
                x.currentIndex = 0;
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
                x.currentIndex = 1;
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
                x.currentIndex = 2;
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
                x.currentIndex = 3;
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
}
