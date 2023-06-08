// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/widgets.dart';
// import 'package:collection/collection.dart';

// class LineChart extends StatelessWidget {
//   final List<Points> points;
//   LineChart({required this.points});
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return LineChart(LineChartData(lineBarsData: [LineChartBarData(spots:points.map((e) => FlSpot(e.x, e.y)) )]));
//   }
// }

// class Points {
//   final double x;
//   final double y;
//   Points({required this.x, required this.y});
// }

// List<Points> get pricePoints {
//   final data = <double>[2, 4, 5, 10, 9, 7, 4, 5];
//   return data.mapIndexed((index, element) => Points(x: index.toDouble(), y: element)).toList();
// }
