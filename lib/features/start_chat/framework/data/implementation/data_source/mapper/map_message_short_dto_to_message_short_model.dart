import 'package:whatsappsendnumber/features/start_chat/domain/models/message_short_model.dart';
import 'package:whatsappsendnumber/features/start_chat/framework/data/config/response/message_short_dto.dart';
import 'package:whatsappsendnumber/resources/utils/interface/mapper.dart';

class MapMessageShortDtoToMessageShortModel implements Mapper<MessageShortDto, MessageShortModel> {
  @override
  MessageShortModel map(MessageShortDto input) {
    return MessageShortModel(input.identifier, input.message);
  }
}
