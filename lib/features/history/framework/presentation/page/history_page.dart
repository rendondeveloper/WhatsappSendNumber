import 'dart:io';import 'package:flutter/material.dart';import 'package:flutter/scheduler.dart';import 'package:flutter/widgets.dart';import 'package:flutter_riverpod/flutter_riverpod.dart';import 'package:url_launcher/url_launcher.dart';import 'package:whatsappsendnumber/core/analitycs/analytics_constants.dart';import 'package:whatsappsendnumber/features/history/framework/presentation/page/widget/number_card.dart';import 'package:whatsappsendnumber/features/history/framework/di/history_di.dart';import 'package:whatsappsendnumber/features/history/framework/presentation/page/ui_models/history_state.dart';import 'package:whatsappsendnumber/resources/extensions/extension_context.dart';import 'package:whatsappsendnumber/resources/widget/dialog/dialog_widget.dart';import 'package:whatsappsendnumber/resources/widget/empty/empty_state_to_refresh_widget.dart';class HistoryPage extends ConsumerStatefulWidget {  const HistoryPage({super.key});  @override  ConsumerState<ConsumerStatefulWidget> createState() => _HistoryPage();}class _HistoryPage extends ConsumerState<HistoryPage> {  @override  void initState() {    super.initState();    SchedulerBinding.instance.addPostFrameCallback((timeStamp) async {      ref.watch(sendMessageProvider.notifier).addListener((state) {        if (state.numberToLaunch.isNotEmpty) {          print(state.numberToLaunch);          launch(state.numberToLaunch);        }      });    });  }  @override  Widget build(BuildContext context) {    final phoneNumbersOutPut = ref.watch(sendMessageProvider.notifier);    return StreamBuilder(        stream: phoneNumbersOutPut.stream,        builder: (context, snapshot) {          if (!snapshot.hasData) {            return Container(color: Colors.white);          }          final history = snapshot.data as HistoryState;          if (history.numberPhones.isNotEmpty) {            return Container(                padding: const EdgeInsets.only(top: 60.0),                width: MediaQuery.of(context).orientation == Orientation.portrait                    ? MediaQuery.of(context).size.width                    : MediaQuery.of(context).size.width * .80,                child: ListView.builder(                  itemCount: history.numberPhones.length,                  itemBuilder: (_, index) {                    return NumberCard(                      phoneNumber: history.numberPhones[index],                      onOpenChat: (numberPhone, message) {                        ref.read(sendMessageProvider.notifier).onEvent(AnalyticsConstants.pageTabHistoryEventItemOpenChat);                        ref.read(sendMessageProvider.notifier).launchChat(numberPhone, message);                        //launch("$urlWhatsAppAndroid$numberPhone");                      },                      onCopy: (numberPhone) {                        ref.read(sendMessageProvider.notifier).onEvent(AnalyticsConstants.pageTabHistoryEventItemDelete);                        context.showSnackBar(                          Text("${context.strings().historyPageTextNumberCopied}$numberPhone",                              style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white)),                        );                      },                      onDelete: (identifier) {                        ref.read(sendMessageProvider.notifier).onEvent(AnalyticsConstants.pageTabHistoryEventItemShowDialogDelete);                        showDialogCustom(                            context: context,                            title: Text(context.strings().dialogDeleteNumberTitle),                            message: Text(context.strings().dialogDeleteNumberMessage),                            callbackOk: () {                              ref.read(sendMessageProvider.notifier).onEvent(AnalyticsConstants.pageTabHistoryEventItemDelete);                              ref.read(sendMessageProvider.notifier).deleteNumber(identifier);                            },                            callbackCancel: () {                              ref.read(sendMessageProvider.notifier).onEvent(AnalyticsConstants.pageTabHistoryEventItemDeleteCancel);                            });                      },                    );                  },                ));          } else {            return EmptyStateToRefreshWidget(              text: Text(context.strings().historyPageTextEmpty, textAlign: TextAlign.justify, style: Theme.of(context).textTheme.headlineSmall),              icon: Icon(Icons.message, size: 140, color: context.dividerColor() ?? context.secondary() ?? Colors.red),            );          }        });  }}