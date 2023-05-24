import 'dart:io';import 'package:flutter/material.dart';import 'package:flutter/widgets.dart';import 'package:flutter_riverpod/flutter_riverpod.dart';import 'package:url_launcher/url_launcher.dart';import 'package:whatsappsendnumber/core/analitycs/analytics_constants.dart';import 'package:whatsappsendnumber/features/home/framework/di/history_di.dart';import 'package:whatsappsendnumber/features/home/framework/presentation/ui_models/history_state.dart';import 'package:whatsappsendnumber/features/home/framework/presentation/widget/number_card.dart';import 'package:whatsappsendnumber/resources/extensions/extension_context.dart';import 'package:whatsappsendnumber/resources/strings_app.dart';import 'package:whatsappsendnumber/resources/widget/dialog/dialog_widget.dart';import 'package:whatsappsendnumber/resources/widget/empty/empty_state_to_refresh_widget.dart';class HistoryPage extends ConsumerWidget {  const HistoryPage({super.key});  @override  Widget build(BuildContext context, WidgetRef ref) {    final phoneNumbersOutPut = ref.watch(sendMessageProvider.notifier);    return StreamBuilder(        stream: phoneNumbersOutPut.stream,        builder: (context, snapshot) {          if (!snapshot.hasData) {            return Container(color: Colors.white);          }          final history = snapshot.data as HistoryState;          if (history.numberPhones.isNotEmpty) {            return Container(                margin: const EdgeInsets.only(top: 44.0),                width: MediaQuery.of(context).orientation == Orientation.portrait                    ? MediaQuery.of(context).size.width                    : MediaQuery.of(context).size.width * .80,                child: ListView.builder(                  itemCount: history.numberPhones.length,                  itemBuilder: (_, index) {                    return NumberCard(                      phoneNumber: history.numberPhones[index],                      onOpenChat: (numberPhone){                        ref.read(sendMessageProvider.notifier).onEvent(AnalyticsConstants.pageTabHistoryEventItemOpenChat);                        launch("${Platform.isAndroid ? urlAppApiWhatsapp : urlAppApiWhatsappIOS}$numberPhone");                      },                      onCopy: (numberPhone) {                        ref.read(sendMessageProvider.notifier).onEvent(AnalyticsConstants.pageTabHistoryEventItemDelete);                        context.showSnackBar(                          Text("${context.strings().historyPageTextNumberCopied}$numberPhone",                              style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white)),                        );                      },                      onDelete: (identifier) {                        ref.read(sendMessageProvider.notifier).onEvent(AnalyticsConstants.pageTabHistoryEventItemShowDialogDelete);                        showDialogCustom(                          context: context,                          title: Text(context.strings().dialogDeleteNumberTitle),                          message: Text(context.strings().dialogDeleteNumberMessage),                          callbackOk: () {                            ref.read(sendMessageProvider.notifier).onEvent(AnalyticsConstants.pageTabHistoryEventItemDelete);                            ref.read(sendMessageProvider.notifier).deleteNumber(identifier);                          },                          callbackCancel: (){                            ref.read(sendMessageProvider.notifier).onEvent(AnalyticsConstants.pageTabHistoryEventItemDeleteCancel);                          }                        );                      },                    );                  },                ));          } else {            return EmptyStateToRefreshWidget(              text: Text(context.strings().historyPageTextEmpty, textAlign: TextAlign.justify, style: Theme.of(context).textTheme.headlineSmall),              icon: Icon(Icons.message, size: 140, color: context.dividerColor() ?? context.secondary() ?? Colors.red),            );          }        });  }}