import 'package:whatsappsendnumber/core/db/features/number_phone_data_base/domain/phone_number_output.dart';import 'package:whatsappsendnumber/core/db/features/number_phone_data_base/framework/data/config/model/number_phone_local.dart';abstract class PhoneNumberDataDataSource {  Future<PhoneNumberOutPut> getPhoneNumber();  Future<void> insertPhoneNumber(PhoneNumberLocal numberPhoneLocal);  Future<void> deleteAllPhoneNumber();  Future<void> deletePhoneNumber(int identifier);}