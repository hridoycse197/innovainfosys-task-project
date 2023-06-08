import 'package:abdulkader/models/smart_mode_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import '../screens/widgets/custom_divider.dart';
import '../screens/widgets/custom_space_widget.dart';
import '../screens/widgets/custom_text_widget.dart';

class ItemDetailsScreenView extends StatelessWidget {
  String selectedItem = 'Living Room';
  List<SmartModeModel> datas = [
    SmartModeModel(
        days: ['Tue', 'Thu'],
        fromTime: '8 pm',
        icon: 'assets/png/light.png',
        status: true,
        subTitile: 'Dining Room',
        title: 'Smart Lamp',
        toTime: '8 am'),
    SmartModeModel(
        days: ['Sun'],
        fromTime: '10 pm',
        icon: 'assets/png/ac1.png',
        status: false,
        subTitile: 'Bedroom',
        title: 'Air Conditioner',
        toTime: '11 am'),
    SmartModeModel(
        days: ['Fri'],
        fromTime: '8 pm',
        icon: 'assets/png/light.png',
        status: false,
        subTitile: 'Bedroom 2',
        title: 'Smart Lamp',
        toTime: '8 am'),
    SmartModeModel(
        days: ['Tue', 'Thu'],
        fromTime: '8 pm',
        icon: 'assets/png/tv.png',
        status: true,
        subTitile: 'Dining Room',
        title: 'Smart Lamp',
        toTime: '8 am'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        //====================== Heading Section Start ======================
        Flexible(
          fit: FlexFit.loose,
          flex: 10,
          child: Container(
              color: const Color(0xffD8E4E8),
              child: Stack(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
                    color: Color(0xff447381),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      children: [
                        SpaceVertical(vertical: kToolbarHeight),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.arrow_back_ios,
                                  size: 20,
                                  color: Colors.white,
                                ),
                                CustomTextWidget(text: 'Back', fontSize: 15)
                              ],
                            ),
                            CustomTextWidget(
                              fontSize: 24,
                              text: 'Lamp',
                              fontWeight: FontWeight.bold,
                            ),
                            const CircleAvatar(
                              radius: 15,
                              backgroundColor: Color(0xffFFFFFF),
                              child: Icon(
                                Icons.search,
                                size: 20,
                              ),
                            )
                          ],
                        ),
                        SpaceVertical(vertical: 20),
                        SizedBox(
                          height: 400,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomTextWidget(text: 'Dining Room', fontSize: 14),
                              SpaceVertical(vertical: 10),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FlutterSwitch(
                                    activeSwitchBorder: Border.all(width: 3, color: Color(0xff9A7265)),
                                    inactiveSwitchBorder: Border.all(width: 3, color: Colors.green),
                                    inactiveTextColor: Colors.green,
                                    activeTextColor: Color(0xff9A7265),

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
                                    value: false,
                                    showOnOff: true,
                                    onToggle: (value) {},
                                  ),
                                ],
                              ),
                              SpaceVertical(vertical: 10),
                              CustomTextWidget(
                                text: '80 %',
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                              SpaceVertical(vertical: 5),
                              CustomTextWidget(text: 'Brightness', fontSize: 14),
                              SpaceVertical(vertical: 15),
                              CustomTextWidget(
                                text: 'Insensity',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                              SpaceVertical(vertical: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(flex: 1, child: Image.asset('assets/png/offlight.png')),
                                  Expanded(
                                    flex: 2,
                                    child: SizedBox(
                                      height: 10,
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        itemCount: 5,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) {
                                          return Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Stack(
                                                children: [
                                                  Container(
                                                    height: 10,
                                                    width: 20,
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: Color(0xff447381),
                                                        border: Border.all(width: 2, color: Colors.white)),
                                                  ),
                                                ],
                                              ),
                                              CustomDivider(height: 1, width: 25, color: Colors.white),
                                            ],
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  Expanded(flex: 1, child: Image.asset('assets/png/onlight.png'))
                                ],
                              ),
                              CustomDivider(height: 1, width: MediaQuery.of(context).size.width - 20, color: Color(0xffD8E4E8)),
                              SpaceVertical(vertical: 10),
                              SizedBox(
                                height: 100,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomTextWidget(
                                      text: 'Usages',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    SpaceVertical(vertical: 10),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomTextWidget(
                                          text: 'Use Today',
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                        CustomTextWidget(
                                          text: '50 watt',
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ],
                                    ),
                                    SpaceVertical(vertical: 10),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomTextWidget(
                                          text: 'Use week',
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                        CustomTextWidget(
                                          text: '500 kwh',
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ],
                                    ),
                                    SpaceVertical(vertical: 10),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomTextWidget(
                                          text: 'Use Month',
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                        CustomTextWidget(
                                          text: '5000 kwh',
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    right: 80,
                    top: 180,
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        boxShadow: [BoxShadow(spreadRadius: 10, blurRadius: 70, color: Colors.amber.shade800)],
                      ),
                    )),
                Positioned(right: 35, child: Image.asset('assets/png/hanging_lamp.png')),
              ])),
        ),
        //====================== Heading Section End ======================

        //====================== Body Section Start======================
        Flexible(
            flex: 6,
            fit: FlexFit.loose,
            child: Container(
                color: const Color(0xff447381),
                child: Stack(children: [
                  Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Color(0xffD8E4E8),
                        borderRadius: BorderRadius.only(topRight: Radius.circular(50)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(children: [
                          SpaceVertical(vertical: 10),
                          Row(
                            children: [
                              CustomTextWidget(
                                text: 'Smart Mode',
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
                                  text: '4',
                                  fontSize: 14,
                                  fontColor: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SpaceVertical(vertical: 10),
                          Column(
                            children: datas
                                .map((e) => Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        width: MediaQuery.of(context).size.width - 20,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    CustomTextWidget(
                                                        text: e.title,
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.bold,
                                                        fontColor: Colors.black),
                                                    SpaceVertical(vertical: 5),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                      children: [
                                                        CustomTextWidget(
                                                          text: e.subTitile,
                                                          fontSize: 12,
                                                          fontColor: Colors.black,
                                                        ),
                                                        SpaceHorizontal(horizontal: 10),
                                                        CustomDivider(
                                                          color: Color(0xff404040),
                                                          height: 15,
                                                          width: .5,
                                                        ),
                                                        SpaceHorizontal(horizontal: 10),
                                                        Row(
                                                            children: e.days
                                                                .map((ex) => CustomTextWidget(
                                                                      text: '$ex ',
                                                                      fontSize: 12,
                                                                      fontColor: Colors.black,
                                                                    ))
                                                                .toList())
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                FlutterSwitch(
                                                  activeSwitchBorder: Border.all(width: 3, color: Color(0xff9A7265)),
                                                  inactiveSwitchBorder: Border.all(width: 3, color: Colors.green),
                                                  inactiveTextColor: Colors.green,
                                                  activeTextColor: Color(0xff9A7265),

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
                                                  value: e.status,
                                                  showOnOff: true,
                                                  onToggle: (value) {
                                                    e.status = !e.status;
                                                  },
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    Image.asset(e.icon),
                                                    SpaceHorizontal(horizontal: 20),
                                                    Column(
                                                      children: [
                                                        CustomTextWidget(
                                                          text: 'from',
                                                          fontSize: 12,
                                                          fontColor: Colors.black,
                                                        ),
                                                        CustomTextWidget(
                                                          text: e.fromTime,
                                                          fontSize: 16,
                                                          fontColor: Colors.black,
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                CustomDivider(
                                                  height: 50,
                                                  width: .5,
                                                  color: Color(0xff404040),
                                                ),
                                                Row(
                                                  children: [
                                                    Column(
                                                      children: [
                                                        CustomTextWidget(
                                                          text: 'from',
                                                          fontSize: 12,
                                                          fontColor: Colors.black,
                                                        ),
                                                        CustomTextWidget(
                                                          text: e.fromTime,
                                                          fontSize: 16,
                                                          fontColor: Colors.black,
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                      ],
                                                    ),
                                                    SpaceHorizontal(horizontal: 20),
                                                    Column(
                                                      children: [
                                                        Image.asset('assets/png/delete_icon.png'),
                                                        SpaceVertical(vertical: 10),
                                                        Image.asset(
                                                          'assets/png/edit_icon.png',
                                                          height: 25,
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ))
                                .toList(),
                          ),
                          SpaceVertical(vertical: 50)
                        ]),
                      ))
                ]))
            //====================== Body Section Start======================
            )
      ]),
    );
  }
}
