class PowerModeModel {
  String title; String subtitle;
  String useunit;
  String date;
  String power;
  String inc_dec;
  bool status;
  String icon;
  PowerModeModel(
      {required this.date,required this.subtitle,
      required this.inc_dec,
      required this.icon,
      required this.status,
      required this.power,
      required this.title,
      required this.useunit});
}
