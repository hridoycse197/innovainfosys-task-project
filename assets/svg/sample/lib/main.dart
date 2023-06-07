import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

void main() {
  return runApp(_ChartApp());
}

class _ChartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chart Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: _MyHomePage(),
    );
  }
}

class _MyHomePage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  _MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<_MyHomePage> {
  List<_SalesData> chartData = [
    _SalesData(DateTime(2020, 11, 11, 8, 00), 400),
    _SalesData(DateTime(2020, 11, 11, 8, 30), 420),
    _SalesData(DateTime(2020, 11, 11, 9, 00), 405),
    _SalesData(DateTime(2020, 11, 11, 9, 30), 418),
    _SalesData(DateTime(2020, 11, 11, 10, 00), 415),
    _SalesData(DateTime(2020, 11, 11, 10, 30), 419),
    _SalesData(DateTime(2020, 11, 12, 3, 50), 417),
    _SalesData(DateTime(2020, 11, 12, 4, 00), 428),
    _SalesData(DateTime(2020, 11, 12, 4, 30), 420),
    _SalesData(DateTime(2020, 11, 12, 5, 00), 422),
    _SalesData(DateTime(2020, 11, 12, 5, 30), 406),
    _SalesData(DateTime(2020, 11, 12, 6, 00), 409),
    _SalesData(DateTime(2020, 11, 12, 6, 30), 411),
    _SalesData(DateTime(2020, 11, 13, 2, 50), 413),
    _SalesData(DateTime(2020, 11, 13, 3, 00), 370),
    _SalesData(DateTime(2020, 11, 13, 3, 30), 382),
    _SalesData(DateTime(2020, 11, 13, 4, 00), 364),
    _SalesData(DateTime(2020, 11, 13, 4, 30), 372),
    _SalesData(DateTime(2020, 11, 13, 5, 00), 366),
    _SalesData(DateTime(2020, 11, 13, 5, 30), 385),
    _SalesData(DateTime(2020, 11, 16, 4, 50), 363),
    _SalesData(DateTime(2020, 11, 16, 5, 00), 370),
    _SalesData(DateTime(2020, 11, 16, 5, 30), 382),
    _SalesData(DateTime(2020, 11, 16, 6, 00), 364),
    _SalesData(DateTime(2020, 11, 16, 6, 30), 372),
    _SalesData(DateTime(2020, 11, 16, 7, 00), 366),
    _SalesData(DateTime(2020, 11, 16, 7, 30), 385),
    _SalesData(DateTime(2020, 11, 17, 2, 50), 475),
    _SalesData(DateTime(2020, 11, 17, 3, 00), 440),
    _SalesData(DateTime(2020, 11, 17, 3, 30), 445),
    _SalesData(DateTime(2020, 11, 17, 4, 00), 437),
    _SalesData(DateTime(2020, 11, 17, 4, 30), 445),
    _SalesData(DateTime(2020, 11, 17, 5, 00), 440),
    _SalesData(DateTime(2020, 11, 17, 5, 30), 425),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Syncfusion Flutter chart'),
        ),
        body: Center(
          child: Container(
            height: 350,
            child: SfCartesianChart(
                onAxisLabelRender: (args) {
                  // converted the axis label date time argument value which is millisecondsepoch to DateTime format.
                  DateTime axisValue =
                      DateTime.fromMillisecondsSinceEpoch(args.value.toInt());
                  // checked the axis name to modify the x-axis labels.
                  if (args.axisName == 'primaryXAxis') {
                    // checked whether the axis label's DateTime values are weekends and if yes then,
                    // we have set empty string for its text argument so that no label will be displayed for weekend DateTime values.
                    if ((axisValue.weekday == DateTime.saturday) ||
                        (axisValue.weekday == DateTime.sunday)) {
                      args.text = '';
                    }
                  }
                },
                primaryXAxis: DateTimeAxis(
                    // Set name for x axis in order to use it in the callback event.
                    name: 'primaryXAxis',
                    intervalType: DateTimeIntervalType.days,
                    majorGridLines: MajorGridLines(width: 0)),
                primaryYAxis: NumericAxis(
                    minimum: 300,
                    maximum: 550,
                    interval: 50,
                    opposedPosition: true),
                series: <ChartSeries<_SalesData, DateTime>>[
                  LineSeries<_SalesData, DateTime>(
                    dataSource: chartData,
                    xValueMapper: (_SalesData sales, _) => sales.date,
                    yValueMapper: (_SalesData sales, _) => sales.sales,
                  )
                ]),
          ),
        ));
  }
}

class _SalesData {
  _SalesData(this.date, this.sales);

  final DateTime date;
  final double sales;
}
