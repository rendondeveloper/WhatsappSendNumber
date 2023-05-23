import 'package:flutter_riverpod/flutter_riverpod.dart';import 'package:whatsappsendnumber/core/analitycs/analytics_constants.dart';import 'package:whatsappsendnumber/core/analitycs/analytics_sender_events.dart';import 'package:whatsappsendnumber/features/home/framework/presentation/ui_models/home_state.dart';class HomeProvider extends StateNotifier<HomeState> {  final AnalyticsSenderEvents _analyticsSenderEvents;  HomeProvider(this._analyticsSenderEvents) : super(const HomeState()){    _sendScreen();  }  void changePage(int index) {    state = state.copyWith(currentTab: index);  }  void onEvent(int tab) {    _analyticsSenderEvents.onEvent(AnalyticsConstants.pageHomeScreenEventTab, parameters: {AnalyticsConstants.pageHomeScreenEventTabSelected: tab});  }  void _sendScreen() {    _analyticsSenderEvents.sendScreen(AnalyticsConstants.pageHomeScreen);  }}