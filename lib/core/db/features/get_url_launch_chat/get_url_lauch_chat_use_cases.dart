import 'package:whatsappsendnumber/resources/strings_app.dart';class GetUrlLauncherChatUseCases {  String invoke(String phone, String message) {    String urlLaunch = "";    if (message.isNotEmpty) {      urlLaunch = urlWhatsAppAndroidWithText.replaceAll(replaceNumber, phone).replaceAll(replaceMessage, message);    } else {      urlLaunch = "$urlWhatsAppAndroid$phone";    }    return urlLaunch;  }}