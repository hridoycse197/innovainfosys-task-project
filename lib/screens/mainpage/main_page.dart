import 'package:abdulkader/screens/homepage/homepageview.dart';
import 'package:abdulkader/screens/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/bottom_nav_bar.dart';

class MainPage extends StatelessWidget {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationComponent(),
      body: getCurrentPage(),
    );
  }

  Widget getCurrentPage() {
    switch (currentIndex) {
      case 0:
        return HomePageView();
      case 1:
        return HomePageView();
      case 2:
        return HomePageView();
      case 3:
        return HomePageView();
      case 4:
        return HomePageView();
      //  return RequestNewShoutSubCategoryPage();

      case 5:
        return HomePageView();
        ;
      default:
        return Center(child: CustomTextWidget(fontSize: 20, text: 'page 6'));
    }
  }
}
