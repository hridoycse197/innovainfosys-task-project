import 'package:abdulkader/models/smart_mode_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import '../../models/active_device_model.dart';
import '../../models/room_data_model.dart';
import '../widgets/custom_divider.dart';
import '../widgets/custom_space_widget.dart';
import '../widgets/custom_text_widget.dart';

class AllRoomScreenView extends StatelessWidget {
  String selectedItem = 'Living Room';
  List<RoomDataModel> datas = [
    RoomDataModel(deviceCont: 4, icon: 'assets/png/sofa_image.png', temp: 11, title: 'Living Room'),
    RoomDataModel(deviceCont: 5, icon: 'assets/png/cabinet.png', temp: 19, title: 'Kitchen'),
    RoomDataModel(deviceCont: 8, icon: 'assets/png/bedroom_image.png', temp: 12, title: 'Bedroom'),
    RoomDataModel(deviceCont: 2, icon: 'assets/png/toilet.png', temp: 19, title: 'Toilet'),
    RoomDataModel(deviceCont: 3, icon: 'assets/png/table.png', temp: 15, title: 'Living Room'),
    RoomDataModel(deviceCont: 4, icon: 'assets/png/bedroom2.png', temp: 15, title: 'Bedroom 2')
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        //====================== Heading Section Start ======================
        Flexible(
          fit: FlexFit.loose,
          flex: 2,
          child: Container(
              color: Color(0xffFFFFFF),
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
                              text: 'Room',
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
                      ],
                    ),
                  ),
                )
              ])),
        ),
        //====================== Heading Section End ======================

        //====================== Body Section Start======================
        Flexible(
            flex: 11,
            fit: FlexFit.loose,
            child: Container(
                color: const Color(0xff447381),
                child: Stack(children: [
                  Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.only(topRight: Radius.circular(50)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(children: [
                          SpaceVertical(vertical: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CustomTextWidget(
                                    text: 'Device Active',
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
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color(0xffFFFFFF),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xff000000).withOpacity(.2),
                                          offset: Offset(0, 2),
                                          blurRadius: 6,
                                          spreadRadius: 1)
                                    ]),
                                child: const Icon(
                                  Icons.add,
                                  color: Color(0xff4C7380),
                                ),
                              )
                            ],
                          ),
                          SpaceVertical(vertical: 10),
                          GridView(
                            primary: false,
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: 1 / 1.2, crossAxisCount: 2),
                            children: datas
                                .map((e) => Container(
                                      margin: EdgeInsets.all(7),
                                      // width: MediaQuery.of(context).size.width * .4,
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color(0xffD8E4E8),
                                      ),
                                      child: Column(children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: 30,
                                              width: 45,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                color: Color(0xff447381),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: CustomTextWidget(
                                                  text: '${e.temp}\u02DAc',
                                                  fontSize: 14,
                                                  fontColor: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Image.asset(e.icon),
                                        CustomTextWidget(
                                          text: e.title,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          fontColor: const Color(0xff404040),
                                        ),
                                        SpaceVertical(vertical: 5),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              alignment: Alignment.center,
                                              padding: const EdgeInsets.all(5),
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                                color: Color(0xffFFE266),
                                              ),
                                              child: CustomTextWidget(
                                                text: e.deviceCont.toString(),
                                                fontSize: 12,
                                                fontColor: Colors.black,
                                              ),
                                            ),
                                            CustomTextWidget(
                                              text: ' devices',
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                              fontColor: const Color(0xff404040),
                                            ),
                                          ],
                                        ),
                                      ]),
                                    ))
                                .toList(),
                          ),
                          SpaceVertical(vertical: 10),
                        ]),
                      ))
                ]))
            //====================== Body Section Start======================
            ),
      ]),
    );
  }
}
