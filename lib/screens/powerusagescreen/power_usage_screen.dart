import 'package:abdulkader/models/smart_mode_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../models/power_usage_model.dart';
import '../widgets/chart_component.dart';
import '../widgets/custom_divider.dart';
import '../widgets/custom_space_widget.dart';
import '../widgets/custom_text_widget.dart';
import 'package:intl/intl.dart';

class PowerUsageScreenView extends StatelessWidget {
  String selectedItem = 'Living Room';
  final List<PowerDataData> chartData = [
    PowerDataData(1, 250, 'Mon'),
    PowerDataData(2, 150, 'Tues'),
    PowerDataData(3, 100, 'Wed'),
    PowerDataData(4, 50, 'Thurs'),
    PowerDataData(5, 10, 'Fri'),
    PowerDataData(5, 20, 'Sat'),
    PowerDataData(5, 30, 'Sun')
  ];

  List<PowerModeModel> datas = [
    PowerModeModel(
        date: '12 Jan',
        subtitle: 'Kitchen - Bedroom',
        icon: 'assets/png/light.png',
        status: false,
        inc_dec: '10.2%',
        title: 'Lamp',
        power: '1000 Kw/h',
        useunit: '8 Unit'),
    PowerModeModel(
        subtitle: 'Kitchen - Living Room',
        date: '12 Jan',
        icon: 'assets/png/ac1.png',
        status: true,
        inc_dec: '10.2%',
        title: 'Air Conditioner',
        power: '1000 Kw/h',
        useunit: '8 Unit'),
    PowerModeModel(
        date: '12 Jan',
        subtitle: 'Kitchen - Bedroom',
        icon: 'assets/png/light.png',
        status: false,
        inc_dec: '10.2%',
        title: 'Lamp',
        power: '1000 Kw/h',
        useunit: '8 Unit'),
    PowerModeModel(
        subtitle: 'Kitchen - Living Room',
        date: '12 Jan',
        icon: 'assets/png/ac1.png',
        status: true,
        inc_dec: '10.2%',
        title: 'Air Conditioner',
        power: '1000 Kw/h',
        useunit: '8 Unit'),
    PowerModeModel(
        subtitle: 'Bedroom',
        date: '12 Jan',
        icon: 'assets/png/speaker.png',
        status: true,
        inc_dec: '10.2%',
        title: 'Wireless Speaker',
        power: '1090 Kw/h',
        useunit: '2 Unit'),
    PowerModeModel(
        subtitle: 'Living Room',
        date: '12 Jan',
        icon: 'assets/png/speaker.png',
        status: false,
        inc_dec: '100.2%',
        title: 'Wireless Speaker',
        power: '1090 Kw/h',
        useunit: '1 Unit'),
    PowerModeModel(
        subtitle: 'Bedroom',
        date: '12 Jan',
        icon: 'assets/png/speaker.png',
        status: true,
        inc_dec: '10.2%',
        title: 'Wireless Speaker',
        power: '1090 Kw/h',
        useunit: '2 Unit'),
    PowerModeModel(
        subtitle: 'Living Room',
        date: '12 Jan',
        icon: 'assets/png/speaker.png',
        status: false,
        inc_dec: '100.2%',
        title: 'Wireless Speaker',
        power: '1090 Kw/h',
        useunit: '1 Unit'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      //====================== Heading Section Start ======================
      Flexible(
          flex: 5,
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
                              text: 'Power Usage',
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
                    SpaceVertical(vertical: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTextWidget(text: 'Usage this Week', fontSize: 14),
                        Row(
                          children: [
                            CustomTextWidget(
                              text: '2500 ',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            CustomTextWidget(
                              text: 'watt',
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            )
                          ],
                        )
                      ],
                    ),
                    SpaceVertical(vertical: 10),
                    SizedBox(
                      width: 550,
                      height: 200,
                      child: SfCartesianChart(
                        onAxisLabelTapped: (args) {
                          // converted the axis label date time argument value which is millisecondsepoch to DateTime format.
                          DateTime axisValue = DateTime.fromMillisecondsSinceEpoch(args.value.toInt());
                          // checked the axis name to modify the x-axis labels.
                          // if (args.axisName == 'Day') {
                          //   // checked whether the axis label's DateTime values are weekends and if yes then,
                          //   // we have set empty string for its text argument so that no label will be displayed for weekend DateTime values.
                          //   if ((axisValue.weekday == DateTime.saturday) || (axisValue.weekday == DateTime.sunday)) {
                          //     args.text = '';
                          //   }
                          // }
                        },
                        backgroundColor: Colors.yellow,
                        //title: ChartTitle(text: 'Yearly sales analysis'),
                        //legend: Legend(isVisible: true),
                        tooltipBehavior: TooltipBehavior(enable: true),
                        series: <ChartSeries>[
                          SplineSeries<PowerDataData, dynamic>(
                              xAxisName: 'Day',
                              dataSource: chartData,
                              xValueMapper: (PowerDataData sales, _) => sales.day,
                              yValueMapper: (PowerDataData sales, _) => sales.kwH,
                              // dataLabelSettings: DataLabelSettings(isVisible: true),
                              enableTooltip: true)
                        ],
                        primaryXAxis: NumericAxis(
                          edgeLabelPlacement: EdgeLabelPlacement.shift,
                        ),
                        primaryYAxis: NumericAxis(labelFormat: '{value}', numberFormat: NumberFormat.simpleCurrency(decimalDigits: 0)),
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
          flex: 5,
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
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(children: [
                      SpaceVertical(vertical: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CustomTextWidget(
                                text: 'Total Today',
                                fontSize: 25,
                                fontColor: const Color(0xff404040),
                              ),
                              SpaceHorizontal(horizontal: 5),
                              Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.all(4),
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
                          CustomTextWidget(
                            text: 'See All',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontColor: const Color(0xff4C7380),
                          ),
                        ],
                      ),
                      SpaceVertical(vertical: 10),
                      Column(
                        children: datas
                            .map((e) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      padding: EdgeInsets.all(20),
                                      width: MediaQuery.of(context).size.width - 20,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color(0xffD8E4E8)),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset(e.icon),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              CustomTextWidget(
                                                text: e.title,
                                                fontSize: 14,
                                                fontColor: Colors.black,
                                              ),
                                              CustomTextWidget(
                                                text: e.subtitle,
                                                fontSize: 12,
                                                fontColor: Colors.black,
                                              ),
                                              Row(
                                                children: [
                                                  CustomTextWidget(text: e.useunit, fontSize: 12, fontColor: Color(0xff878787)),
                                                  SpaceHorizontal(horizontal: 5),
                                                  CustomDivider(
                                                    height: 15,
                                                    width: .5,
                                                  ),
                                                  SpaceHorizontal(horizontal: 5),
                                                  CustomTextWidget(text: e.date, fontSize: 12, fontColor: Color(0xff878787)),
                                                ],
                                              )
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              CustomTextWidget(
                                                text: e.power,
                                                fontSize: 16,
                                                fontColor: Color(0xff4C7380),
                                              ),
                                              e.status
                                                  ? Row(
                                                      children: [
                                                        Image.asset('assets/png/up.png'),
                                                        SpaceHorizontal(horizontal: 7),
                                                        CustomTextWidget(
                                                          text: '-- ${e.inc_dec}',
                                                          fontSize: 12,
                                                          fontColor: Color(0xff659A6E),
                                                        ),
                                                      ],
                                                    )
                                                  : Row(
                                                      children: [
                                                        Image.asset('assets/png/down.png'),
                                                        SpaceHorizontal(horizontal: 7),
                                                        CustomTextWidget(
                                                          text: '-- ${e.inc_dec}',
                                                          fontSize: 12,
                                                          fontColor: Color(0xff9A7265),
                                                        ),
                                                      ],
                                                    ),
                                            ],
                                          ),
                                        ],
                                      )),
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

class PowerDataData {
  PowerDataData(this.day, this.kwH, this.xName);
  final int day;
  final String xName;
  final double kwH;
}
