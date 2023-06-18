import 'package:flutter/widgets.dart';import 'package:flutter_riverpod/flutter_riverpod.dart';import 'package:whatsappsendnumber/core/analitycs/analytics_constants.dart';import 'package:whatsappsendnumber/core/analitycs/analytics_sender_events.dart';import 'package:whatsappsendnumber/features/home/framework/presentation/ui_models/home_state.dart';import 'package:whatsappsendnumber/features/home/usescases/download_countries_use_cases.dart';import 'package:whatsappsendnumber/resources/enum/view_status.dart';class HomeProvider extends StateNotifier<HomeState> {  final AnalyticsSenderEvents _analyticsSenderEvents;  final DownloadCountriesUseCases _downloadCountriesUseCases;  HomeProvider(this._analyticsSenderEvents, this._downloadCountriesUseCases) : super(const HomeState()) {    _sendScreen();  }  void changePage(int index) {    state = state.copyWith(currentTab: index);  }  void onEvent(int tab) {    _analyticsSenderEvents.onEvent(AnalyticsConstants.pageHomeScreenEventTab, parameters: {AnalyticsConstants.pageHomeScreenEventTabSelected: tab});  }  void _sendScreen() {    _analyticsSenderEvents.sendScreen(AnalyticsConstants.pageHomeScreen);  }  void downloadCountries(BuildContext context) async {    state = state.copyWith(status: ViewStatus.loading);    final result = await _downloadCountriesUseCases.invoke(context);    state = state.copyWith(status: ViewStatus.success);  }}