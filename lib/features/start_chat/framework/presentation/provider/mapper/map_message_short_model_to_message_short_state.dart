import 'package:whatsappsendnumber/features/start_chat/domain/models/message_short_model.dart';
import 'package:whatsappsendnumber/features/start_chat/framework/presentation/page/ui_models/message_short_state.dart';
import 'package:whatsappsendnumber/resources/utils/interface/mapper.dart';

class MapMessageShortModelToMessageShortState implements Mapper<MessageShortModel, MessageShortState> {
  @override
  MessageShortState map(MessageShortModel input) {
    return MessageShortState(identifier: input.identifier, message: input.message);
  }
}
