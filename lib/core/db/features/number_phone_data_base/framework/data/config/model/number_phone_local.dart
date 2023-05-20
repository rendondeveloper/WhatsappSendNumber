import 'package:whatsappsendnumber/core/db/data_base/tables.dart';

class PhoneNumberLocal {
  late int identifier;
  late String number;
  late String date;

  PhoneNumberLocal({required this.identifier, required this.number, required this.date});

  PhoneNumberLocal.fromMap(Map<String, dynamic> json) {
    identifier = json[numberPhoneIdentifier] != null ? int.parse(json[numberPhoneIdentifier]) : 0;
    number = json[numberPhoneNumber] ?? "";
    date = json[numberPhoneDate] ?? "";
  }

  Map<String, dynamic> toMap() {
    return {
      numberPhoneNumber: number,
      numberPhoneDate: date,
    };
  }
}
