import 'package:whatsappsendnumber/core/db/features/number_phone_data_base/domain/phone_number.dart';
import 'package:whatsappsendnumber/features/home/framework/presentation/ui_models/phone_number_state.dart';
import 'package:whatsappsendnumber/resources/utils/interface/mapper.dart';

class MapPhoneNumberLocalToPhoneNumberState implements Mapper<PhoneNumber, PhoneNumberState> {
  @override
  PhoneNumberState map(PhoneNumber input) {
    return PhoneNumberState(
      identifier: input.identifier,
      phoneNumber: input.number,
      message: input.message,
      date: input.date,
    );
  }
}
