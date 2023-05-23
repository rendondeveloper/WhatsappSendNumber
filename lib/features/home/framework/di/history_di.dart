import 'package:flutter_riverpod/flutter_riverpod.dart';import 'package:whatsappsendnumber/core/db/features/number_phone_data_base/framework/di/notifications_di.dart';import 'package:whatsappsendnumber/features/home/framework/presentation/provider/history_provider.dart';import 'package:whatsappsendnumber/features/home/framework/presentation/provider/mapper/map_phone_number_local_to_phone_number_state.dart';import 'package:whatsappsendnumber/features/home/framework/presentation/ui_models/history_state.dart';import 'package:whatsappsendnumber/features/splash/framework/di/splash_di.dart';final mapPhoneNumberLocalToPhoneNumberStateProvider =    Provider<MapPhoneNumberLocalToPhoneNumberState>((provider) => MapPhoneNumberLocalToPhoneNumberState());final sendMessageProvider = StateNotifierProvider.autoDispose<HistoryProvider, HistoryState>((provider) {  return HistoryProvider(provider.watch(getPhoneNumberUsesCasesProvider), provider.watch(deleteItemPhoneNumberUsesCasesProvider),      provider.watch(mapPhoneNumberLocalToPhoneNumberStateProvider), provider.watch(analyticsSenderEventsProvider));});