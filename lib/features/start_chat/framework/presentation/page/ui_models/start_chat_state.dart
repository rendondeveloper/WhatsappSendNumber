import 'package:freezed_annotation/freezed_annotation.dart';import 'package:whatsappsendnumber/features/start_chat/framework/presentation/page/ui_models/country_state.dart';import 'package:whatsappsendnumber/features/start_chat/framework/presentation/page/ui_models/message_short_state.dart';part 'start_chat_state.freezed.dart';@freezedclass StartChatState with _$StartChatState{  const factory StartChatState({    @Default(false) bool stateErrorInput,    @Default("") String numberToLaunch,    @Default("") String numberCopied,    @Default("") String messageError,    @Default(MessageShortState()) MessageShortState message,    @Default([]) List<CountryState> countries,    @Default(CountryState()) CountryState country,  }) = _StartChatState;  const StartChatState._();}