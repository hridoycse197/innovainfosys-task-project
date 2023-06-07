class ActiveDeviceModel {
  String icon;
  String title;
  String subtitle;
  String heading;
  String place;
  bool status;

  ActiveDeviceModel(
      {required this.heading,
      required this.icon,
      required this.place,
      required this.status,
      required this.subtitle,
      required this.title});
}
