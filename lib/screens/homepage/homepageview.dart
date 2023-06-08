import 'package:abdulkader/screens/itemdetailscreen/item_details_screen.dart';
import 'package:abdulkader/screens/activedevicescreen/active_device_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import '../../models/active_device_model.dart';
import '../widgets/custom_space_widget.dart';
import '../widgets/custom_text_widget.dart';
import 'widgets/custom_card.dart';
import 'widgets/custom_card_grid.dart';

class HomePageView extends StatelessWidget {
  List<ActiveDeviceModel> datas = [
    ActiveDeviceModel(
      heading: 'Tempurature',
      place: 'Kitechen',
      subtitle: '14\u02DAc',
      icon: 'assets/png/ac_image.png',
      status: false,
      title: 'AC',
    ),
    ActiveDeviceModel(
      heading: 'Colour',
      place: 'Dining room',
      subtitle: 'White',
      icon: 'assets/png/lights.png',
      status: false,
      title: 'Lamp',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        //====================== Heading Section Start ======================
        Flexible(
            fit: FlexFit.loose,
            flex: 4,
            child: Container(
                color: const Color(0xffFFFFFF),
                child: Stack(children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
                      color: Color(0xff447381),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Stack(
                        children: [
                          Positioned(
                              left: -40,
                              top: 30,
                              child: Image.asset(
                                'assets/png/c-one.png',
                              )),
                          Positioned(left: -40, top: 80, child: Image.asset('assets/png/c-two.png')),
                          Positioned(right: 0, top: 30, child: Image.asset('assets/png/right_cloud.png')),
                          Column(
                            children: [
                              SpaceVertical(vertical: kToolbarHeight + 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SpaceHorizontal(horizontal: 20),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
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
                                          ),
                                        ],
                                      ),
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
                              Stack(
                                children: [
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
                                                Image.asset('assets/png/weather_icon.png'),
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
                                  ),
                                  Positioned(bottom: 0, right: 2, child: Image.asset('assets/png/twemoji_sun.png')),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ]))),
        //====================== Heading Section End ======================

        //====================== Body Section Start======================
        Flexible(
            fit: FlexFit.loose,
            flex: 4,
            child: Stack(children: [
              Container(
                  color: const Color(0xff447381),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.only(topRight: Radius.circular(50)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
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
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return ItemDetailsScreenView();
                                      },
                                    ));
                                  },
                                  child: CustomTextWidget(
                                    text: 'See All',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontColor: const Color(0xff4C7380),
                                  ),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
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
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return ActiveDeviceScreenView();
                                      },
                                    ));
                                  },
                                  child: CustomTextWidget(
                                    text: 'See All',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontColor: const Color(0xff4C7380),
                                  ),
                                )
                              ],
                            ),
                            SpaceVertical(vertical: 10),
                            GridView(
                              primary: false,
                              shrinkWrap: true,
                              padding: EdgeInsets.zero,
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                              children: datas
                                  .map((e) => Stack(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.all(5),
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
                                                      CustomTextWidget(text: e.heading, fontSize: 15),
                                                      CustomTextWidget(
                                                        text: e.subtitle,
                                                        fontSize: 16,
                                                        fontColor: Colors.white,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              SpaceVertical(vertical: 35),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    flex: 1,
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        CustomTextWidget(text: e.title, fontSize: 25),
                                                        CustomTextWidget(
                                                          text: e.place,
                                                          fontSize: 16,
                                                          fontColor: Colors.white,
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SpaceHorizontal(horizontal: 10),
                                                  Expanded(
                                                    flex: 1,
                                                    child: FlutterSwitch(
                                                      height: 30, width: 70,
                                                      activeSwitchBorder: Border.all(color: Colors.green),
                                                      inactiveSwitchBorder: Border.all(color: Colors.green),
                                                      inactiveTextColor: Colors.green,
                                                      activeTextColor: Colors.green,
                                                      inactiveText: ' ON',
                                                      activeText: ' OFF',
                                                      inactiveColor: Colors.white,
                                                      activeColor: Colors.white, borderRadius: 35,
                                                      // activeToggleColor: Colors.green,
                                                      activeIcon: const ImageIcon(AssetImage(
                                                        'assets/png/toogle-active.png',
                                                      )),
                                                      inactiveIcon: const ImageIcon(AssetImage(
                                                        'assets/png/toogle-active.png',
                                                      )),
                                                      value: true,
                                                      showOnOff: true,
                                                      onToggle: (value) {
                                                        e.status = !e.status;
                                                      },
                                                    ),
                                                    //  Container(
                                                    //   width: 55,
                                                    //   height: 28,
                                                    //   // padding: EdgeInsets.all(2),
                                                    //   decoration: BoxDecoration(
                                                    //       color: Colors.white,
                                                    //       border: Border.all(width: 2, color: Colors.green),
                                                    //       borderRadius: BorderRadius.circular(20)),
                                                    //   child: Row(
                                                    //     children: [
                                                    //       CustomTextWidget(
                                                    //         text: 'OFF',
                                                    //         fontSize: 17,
                                                    //         fontColor: Colors.green,
                                                    //       ),
                                                    //       Image.asset(
                                                    //         'assets/png/switch_icon.png',
                                                    //         height: 20,
                                                    //         width: 20,
                                                    //       )
                                                    //     ],
                                                    //   ),
                                                    // ),
                                                  )
                                                ],
                                              )
                                            ]),
                                          ),
                                          Positioned(
                                              top: 5,
                                              left: 10,
                                              child: Image.asset(
                                                e.icon,
                                                height: 65,
                                              )),
                                        ],
                                      ))
                                  .toList(),
                            ),
                            SpaceVertical(vertical: 50)
                          ]),
                        ),
                      )))
            ])),
        //====================== Body Section Start======================
      ]),
    );
  }
}
