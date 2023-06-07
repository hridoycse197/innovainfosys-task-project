class SmartModeModel {
  String title;
  String subTitile;
  List<String> days;
  bool status;
  String icon;
  String fromTime;
  String toTime;
  SmartModeModel(
      {required this.days,
      required this.fromTime,
      required this.icon,
      required this.status,
      required this.subTitile,
      required this.title,
      required this.toTime});
}
