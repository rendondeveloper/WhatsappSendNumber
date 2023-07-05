import 'package:date_format/date_format.dart';import 'package:url_launcher/url_launcher.dart';extension CustomDate on DateTime {  String toConvertDMMYYYY() {    return formatDate(this, [d, '/', mm, '/', yyyy, ' ', HH, ':', nn]);  }}extension CustomString on String {  void launchUrl(String baseUrl) {    launch("$baseUrl$this");  }  bool toBool() => this == "1";  void log() => print(this);}extension CustomStringNull on String? {  bool isNumber() {    return this != null ? double.tryParse(this!) != null : false;  }}