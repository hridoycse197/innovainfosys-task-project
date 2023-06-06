import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import '../widgets/custom_space_widget.dart';
import '../widgets/custom_text_widget.dart';
import 'widgets/custom_card.dart';
import 'widgets/custom_card_grid.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      //====================== Heading Section Start ======================
      Flexible(
          flex: 3,
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
                    SpaceVertical(vertical: kToolbarHeight),
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
                    SpaceVertical(vertical: 10),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xffd6e4e9),
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset('assets/weather_icon.png'),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CustomTextWidget(
                                        text: 'May 16,2023 10:05 am',
                                        fontSize: 15,
                                        fontColor: Colors.black,
                                      ),
                                      CustomTextWidget(
                                        text: 'Cloudy',
                                        fontSize: 15,
                                        fontColor: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      CustomTextWidget(
                                        text: 'Jakarta,Indonesia',
                                        fontSize: 15,
                                        fontColor: Colors.black,
                                      ),
                                    ],
                                  ),
                                  SpaceHorizontal(horizontal: 15),
                                  CustomTextWidget(
                                    text: '19\u02DAc',
                                    fontSize: 35,
                                    fontColor: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                              const Divider(
                                thickness: 2,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  CustomCard(
                                    imagePath: 'assets/png/water_drop_icon.png',
                                    title: 'Humadity',
                                    percentange: '97 ',
                                    titletrailing: '%',
                                  ),
                                  CustomCard(
                                    imagePath: 'assets/png/water_drop_icon.png',
                                    title: 'Visibility',
                                    percentange: '7 ',
                                    titletrailing: 'km',
                                  ),
                                  CustomCard(
                                    imagePath: 'assets/png/water_drop_icon.png',
                                    title: 'NE Wind',
                                    percentange: '3 ',
                                    titletrailing: 'km/h',
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ])),
      //====================== Heading Section End ======================

      //====================== Body Section Start======================
      Flexible(
          flex: 4,
          child: Stack(children: [
            Container(
              color: const Color(0xff447381),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(50)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(children: [
                    SpaceVertical(vertical: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTextWidget(
                          text: 'Rooms',
                          fontSize: 25,
                          fontColor: const Color(0xff404040),
                        ),
                        CustomTextWidget(
                          text: 'See All',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontColor: const Color(0xff4C7380),
                        ),
                      ],
                    ),
                    SpaceVertical(vertical: 10),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                      Customcardgrid(imagePath: 'assets/png/sofa_image.png', celcius: '19', count: '5', title: 'Living Room'),
                      Customcardgrid(imagePath: 'assets/png/bedroom_image.png', celcius: '12', count: '8', title: 'Bedroom'),
                    ]),
                    SpaceVertical(vertical: 20),
                    Row(
                      children: [
                        CustomTextWidget(
                          text: 'Active',
                          fontSize: 25,
                          fontColor: const Color(0xff404040),
                        ),
                        SpaceHorizontal(horizontal: 5),
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Color(0xff447381),
                          ),
                          child: CustomTextWidget(
                            text: '6',
                            fontSize: 14,
                            fontColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SpaceVertical(vertical: 10),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                      Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .4,
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xff9A7265),
                            ),
                            child: Column(children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      CustomTextWidget(text: 'Temprature', fontSize: 12),
                                      CustomTextWidget(
                                        text: '19\u02DAc',
                                        fontSize: 12,
                                        fontColor: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SpaceVertical(vertical: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CustomTextWidget(text: 'AC', fontSize: 18),
                                      CustomTextWidget(
                                        text: 'Living room',
                                        fontSize: 12,
                                        fontColor: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ],
                                  ),
                                  SpaceHorizontal(horizontal: 10),
                                  Container(
                                    width: 55,
                                    height: 28,
                                    // padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(width: 2, color: Colors.green),
                                        borderRadius: BorderRadius.circular(20)),
                                    child: Row(
                                      children: [
                                        CustomTextWidget(
                                          text: 'OFF',
                                          fontSize: 17,
                                          fontColor: Colors.green,
                                        ),
                                        Image.asset(
                                          'assets/png/switch_icon.png',
                                          height: 20,
                                          width: 20,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ]),
                          ),
                          Positioned(
                              top: 0,
                              left: 10,
                              child: Image.asset(
                                'assets/png/ac_image.png',
                                height: 45,
                              )),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .4,
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xff9A7265),
                            ),
                            child: Column(children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      CustomTextWidget(text: 'Color', fontSize: 12),
                                      CustomTextWidget(
                                        text: 'White',
                                        fontSize: 12,
                                        fontColor: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SpaceVertical(vertical: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CustomTextWidget(text: 'Lamp', fontSize: 18),
                                      CustomTextWidget(
                                        text: 'Dining room',
                                        fontSize: 12,
                                        fontColor: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ],
                                  ),
                                  SpaceHorizontal(horizontal: 10),
                                  Container(
                                    width: 55,
                                    height: 28,
                                    // padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(width: 2, color: Colors.green),
                                        borderRadius: BorderRadius.circular(20)),
                                    child: Row(
                                      children: [
                                        CustomTextWidget(
                                          text: 'OFF',
                                          fontSize: 17,
                                          fontColor: Colors.green,
                                        ),
                                        Image.asset(
                                          'assets/png/switch_icon.png',
                                          height: 20,
                                          width: 20,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ]),
                          ),
                          Positioned(
                              top: 0,
                              left: 10,
                              child: Image.asset(
                                'assets/png/lights.png',
                                height: 45,
                              )),
                        ],
                      )
                    ]),
                  ]),
                ))
          ]))
      //====================== Body Section Start======================
    ]));
  }
}
