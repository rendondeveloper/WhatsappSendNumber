import 'package:whatsappsendnumber/core/db/features/number_phone_data_base/data/data_source/notification_data/phone_number_data_source.dart';
import 'package:whatsappsendnumber/core/db/features/number_phone_data_base/domain/phone_number_output.dart';
import 'package:whatsappsendnumber/core/db/features/number_phone_data_base/framework/data/config/model/number_phone_local.dart';

class PhoneNumberRepository {
  final PhoneNumberDataDataSource _phoneNumberDataSource;

  PhoneNumberRepository(this._phoneNumberDataSource);

  Future<PhoneNumberOutPut> getPhoneNumber() => _phoneNumberDataSource.getPhoneNumber();

  Future<void> insertPhoneNumber(PhoneNumberLocal numberPhoneLocal) => _phoneNumberDataSource.insertPhoneNumber(numberPhoneLocal);

  Future<void> deleteAllPhoneNumber() => _phoneNumberDataSource.deleteAllPhoneNumber();

  Future<void> deletePhoneNumber(int identifier) => _phoneNumberDataSource.deletePhoneNumber(identifier);
}
