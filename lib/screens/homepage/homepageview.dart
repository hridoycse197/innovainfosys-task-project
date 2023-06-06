import 'package:flutter/material.dart';

import '../widgets/custom_text_widget.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        Flexible(
            flex: 2,
            child: Stack(children: [
              Container(
                color: const Color(0xffFFFFFF),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
                  color: Color(0xff447381),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomTextWidget(
                                fontSize: 35,
                                text: 'Good Morning,',
                                fontWeight: FontWeight.bold,
                              ),
                              CustomTextWidget(
                                fontSize: 20,
                                text: 'Kimberly Mastrangelo',
                                fontColor: Colors.black,
                              )
                            ],
                          ),
                          const CircleAvatar(
                            backgroundColor: Color(0xffFFFFFF),
                            child: Icon(
                              Icons.add_alert_sharp,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xffd6e4e9),
                          ),
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ])),
        Flexible(
          flex: 4,
          child: Stack(children: [
            Container(
              color: const Color(0xff447381),
            ),
            Container(
                decoration: const BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.only(topRight: Radius.circular(50)),
            ))
          ]),
        )
      ]),
    ));
  }
}
