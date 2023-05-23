import 'package:flutter_riverpod/flutter_riverpod.dart';import 'package:whatsappsendnumber/core/analitycs/analytics_constants.dart';import 'package:whatsappsendnumber/core/analitycs/analytics_sender_events.dart';import 'package:whatsappsendnumber/core/db/features/number_phone_data_base/framework/data/config/model/number_phone_local.dart';import 'package:whatsappsendnumber/core/db/features/number_phone_data_base/usescase/save_phone_number_uses_case.dart';import 'package:whatsappsendnumber/features/home/framework/presentation/ui_models/send_message_state.dart';import 'package:whatsappsendnumber/resources/extensions/extension_string.dart';class SendMessageProvider extends StateNotifier<SendMessageState> {  final AnalyticsSenderEvents _analyticsSenderEvents;  final SavePhoneNumberUsesCases _saveNumberPhoneUesCase;  SendMessageProvider(this._saveNumberPhoneUesCase, this._analyticsSenderEvents) : super(const SendMessageState()){   _sendScreen();  }  Future<void> saveNumberPhone(String phoneNumber) async {    _saveNumberPhoneUesCase.invoke(PhoneNumberLocal(identifier: 0, number: phoneNumber, date: DateTime.now().toConvertDMMYYYY()));  }  void onEvent(String event) {    _analyticsSenderEvents.onEvent(AnalyticsConstants.pageTabHistoryEvent, parameters: {AnalyticsConstants.pageTabHistoryEventItem: event});  }  void _sendScreen() {    _analyticsSenderEvents.sendScreen(AnalyticsConstants.pageTabSendMessage);  }}