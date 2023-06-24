import 'package:whatsappsendnumber/features/history/data/data_source/phone_number_data_source.dart';
import 'package:whatsappsendnumber/features/history/domain/models/phone_number_output.dart';
import 'package:whatsappsendnumber/features/history/framework/data/config/models/number_phone_local.dart';

class PhoneNumberRepository {
  final PhoneNumberDataDataSource _phoneNumberDataSource;

  PhoneNumberRepository(this._phoneNumberDataSource);

  Future<PhoneNumberOutPut> getPhoneNumber() => _phoneNumberDataSource.getPhoneNumber();

  Future<void> insertPhoneNumber(PhoneNumberLocal numberPhoneLocal) => _phoneNumberDataSource.insertPhoneNumber(numberPhoneLocal);

  Future<void> deleteAllPhoneNumber() => _phoneNumberDataSource.deleteAllPhoneNumber();

  Future<void> deletePhoneNumber(int identifier) => _phoneNumberDataSource.deletePhoneNumber(identifier);
}
