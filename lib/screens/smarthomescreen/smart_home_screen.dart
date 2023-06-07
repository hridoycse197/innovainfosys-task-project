import 'package:abdulkader/models/smart_mode_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import '../widgets/custom_space_widget.dart';
import '../widgets/custom_text_widget.dart';
import 'widgets/custom_card.dart';
import 'widgets/custom_card_grid.dart';

class SmartHomeScreenView extends StatelessWidget {
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
    return Column(children: [
      //====================== Heading Section Start ======================
      Expanded(
          flex: 2,
          child: Stack(children: [
            Container(
              color: const Color(0xffD8E4E8),
            ),
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
                        Column(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextWidget(
                              fontSize: 24,
                              text: 'Smart Home',
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Color(0xffFFFFFF),
                          child: Image.asset('assets/png/smart_home_icon.png'),
                        )
                      ],
                    ),
                    SpaceVertical(vertical: 20),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff404040)),
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xffD8E4E8),
                      ),
                      height: 56,
                      width: MediaQuery.of(context).size.width - 35,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: DropdownButton<String>(
                          icon: Icon(Icons.keyboard_arrow_down),
                          value: selectedItem,
                          underline: Container(
                            height: 1,
                            // color: hexToColor('#72778F'),
                          ),

                          isExpanded: true,
                          // isDense: true,
                          alignment: Alignment.bottomCenter,
                          // elevation: 4,

                          items: [
                            DropdownMenuItem<String>(
                              value: 'Bed Room',
                              alignment: AlignmentDirectional.centerStart,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: CustomTextWidget(
                                  fontColor: Colors.black,
                                  text: 'Bed Room',
                                  fontSize: 20,
                                  // fontSize: 15,
                                ),
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Drawing Room',
                              alignment: AlignmentDirectional.centerStart,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: CustomTextWidget(
                                  fontColor: Colors.black,
                                  text: 'Drawing Room',
                                  fontSize: 20,
                                  // fontSize: 15,
                                ),
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Living Room',
                              alignment: AlignmentDirectional.centerStart,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: CustomTextWidget(
                                  fontColor: Colors.black,
                                  text: 'Living Room',
                                  fontSize: 20,
                                  // fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                          onChanged: (x) async {
                            selectedItem = x!;
                            print(x);
                            //Select current agency put on hive

                            //  agencyC.putSelectedAgency(x);
                            // await attendanceC.getAttendaneHistory();
                          },
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
          flex: 6,
          child: Stack(children: [
            Container(
              color: const Color(0xff447381),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color(0xffD8E4E8),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(50)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
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
                                    height: 145,
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
                                                    text: e.title, fontSize: 16, fontWeight: FontWeight.bold, fontColor: Colors.black),
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
                                                    Container(
                                                      height: 15,
                                                      color: Color(0xff404040),
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
                                            Switch(
                                              value: false,
                                              onChanged: (value) {},
                                            )
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
                                            Container(
                                              height: 50,
                                              color: Color(0xff404040),
                                              width: .5,
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
                  ),
                ))
          ]))
      //====================== Body Section Start======================
    ]);
  }
}
