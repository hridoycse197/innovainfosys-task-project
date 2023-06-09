import 'package:abdulkader/screens/itemdetailscreen/item_details_screen.dart';
import 'package:abdulkader/screens/allroomscreen/all_room_screen.dart';
import 'package:flutter/material.dart';
import '../../models/active_device_model.dart';

import '../livingroomscreen/living_room_screen.dart';
import '../widgets/custom_space_widget.dart';
import '../widgets/custom_text_widget.dart';

class ActiveDeviceScreenView extends StatelessWidget {
  String selectedItem = 'Living Room';
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
    ActiveDeviceModel(
      heading: 'Colour',
      place: 'Bed room',
      subtitle: 'Yellow',
      icon: 'assets/png/lights.png',
      status: false,
      title: 'Lamp',
    ),
    ActiveDeviceModel(
      heading: 'Colour',
      place: 'Dining room',
      subtitle: 'White',
      icon: 'assets/png/lights.png',
      status: false,
      title: 'Lamp',
    ),
    ActiveDeviceModel(
      heading: 'Colour',
      place: 'Bed room',
      subtitle: 'Yellow',
      icon: 'assets/png/lights.png',
      status: false,
      title: 'Lamp',
    ),
    ActiveDeviceModel(
      heading: 'Colour',
      place: 'Dining room',
      subtitle: 'White',
      icon: 'assets/png/lights.png',
      status: false,
      title: 'Lamp',
    ),
    ActiveDeviceModel(
      heading: 'Colour',
      place: 'Bed room',
      subtitle: 'Yellow',
      icon: 'assets/png/lights.png',
      status: false,
      title: 'Lamp',
    ),
    ActiveDeviceModel(
      heading: 'Tempurature',
      place: 'Living room',
      subtitle: '19\u02DAc',
      icon: 'assets/png/ac_image.png',
      status: false,
      title: 'AC',
    ),
    ActiveDeviceModel(
      heading: 'Channel',
      place: 'Bed room',
      subtitle: 'TVN',
      icon: 'assets/png/tv.png',
      status: false,
      title: 'TV',
    ),
    ActiveDeviceModel(
      heading: 'Tempurature',
      place: 'Bedroom',
      subtitle: '12\u02DAc',
      icon: 'assets/png/ac_image.png',
      status: false,
      title: 'AC',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          //====================== Heading Section Start ======================
          Flexible(
            fit: FlexFit.loose,
            flex: 2,
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
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.arrow_back_ios,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                    CustomTextWidget(text: 'Back', fontSize: 15)
                                  ],
                                ),
                              ),
                              CustomTextWidget(
                                fontSize: 24,
                                text: 'Smart Home',
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
                            SpaceVertical(vertical: 15),
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
                                      color: Color(0xff9A7265),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color(0xff000000).withOpacity(.2),
                                            offset: Offset(0, 2),
                                            blurRadius: 6,
                                            spreadRadius: 1)
                                      ]),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                            SpaceVertical(vertical: 10),
                            GridView(
                              primary: false,
                              shrinkWrap: true,
                              padding: EdgeInsets.zero,
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                              children: datas
                                  .map((e) => GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(MaterialPageRoute(
                                            builder: (context) =>
                                                e.place == 'Living room' ? LivingRoomScreenView() : ItemDetailsScreenView(),
                                          ));
                                        },
                                        child: Stack(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.all(5),
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
                                                    Flexible(
                                                      fit: FlexFit.loose,
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
                                                      child: Container(
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
                                                      ),
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
                                        ),
                                      ))
                                  .toList(),
                            ),
                            SpaceVertical(vertical: 10),
                            Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width - 40,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Color(0xff9A7265), boxShadow: [
                                BoxShadow(
                                    color: Color(0xff000000).withOpacity(.2), offset: Offset(0, 2), blurRadius: 6, spreadRadius: 1)
                              ]),
                              height: 52,
                              child: CustomTextWidget(
                                text: 'Turn Off All Devices',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SpaceVertical(vertical: 10),
                          ]),
                        ))
                  ]))
              //====================== Body Section Start======================
              ),
        ]),
      ),
    );
  }
}
