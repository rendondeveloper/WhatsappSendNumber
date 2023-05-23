import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsappsendnumber/features/home/framework/presentation/ui_models/phone_number_state.dart';
import 'package:whatsappsendnumber/resources/extensions/extension_context.dart';

class NumberCard extends StatefulWidget {
  final PhoneNumberState phoneNumber;
  final Function(String) onCopy;
  final Function(int) onDelete;
  final Function(String) onOpenChat;

  const NumberCard({required this.phoneNumber, required this.onCopy, required this.onDelete, required this.onOpenChat, super.key});

  @override
  State<StatefulWidget> createState() {
    return _NumberCard();
  }
}

class _NumberCard extends State<NumberCard> {
  final _sizeHeight = 62.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final date = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(context.strings().numberCardDate, style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Colors.lightBlueAccent)),
        const SizedBox(width: 4.0),
        Text(widget.phoneNumber.date, maxLines: 1, overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.labelMedium),
      ],
    );

    final number = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(context.strings().numberCardNumber, style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Colors.lightBlueAccent)),
        const SizedBox(width: 16.0),
        SizedBox(
            width: 190.0,
            child: Text(widget.phoneNumber.phoneNumber,
                maxLines: 1, overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.bold))),
      ],
    );

    final body = SizedBox(
      height: _sizeHeight,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [date, number],
            ),
          ),
          Expanded(
            flex: 1,
            child: InkWell(
              onTap: () {
                widget.onDelete.call(widget.phoneNumber.identifier);
              },
              child: Material(
                borderRadius: const BorderRadius.only(topRight: Radius.circular(4.0), bottomRight: Radius.circular(4.0)),
                elevation: 2.0,
                child: Container(
                  height: _sizeHeight,
                  color: context.errorColor() ?? Colors.red,
                  child: Icon(Icons.delete, size: _sizeHeight - 30.0, color: Theme.of(context).iconTheme.color),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: InkWell(
              onTap: () {
                Clipboard.setData(ClipboardData(text: widget.phoneNumber.phoneNumber));
                widget.onCopy.call(widget.phoneNumber.phoneNumber);
              },
              child: Material(
                borderRadius: const BorderRadius.only(topRight: Radius.circular(4.0), bottomRight: Radius.circular(4.0)),
                elevation: 2.0,
                child: Container(
                  height: _sizeHeight,
                  color: context.dividerColor() ?? Colors.red,
                  child: Icon(Icons.copy, size: _sizeHeight - 30.0, color: Theme.of(context).iconTheme.color),
                ),
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: InkWell(
                onTap: () {
                  widget.onOpenChat(widget.phoneNumber.phoneNumber);
                },
                child: Material(
                  borderRadius: const BorderRadius.only(topRight: Radius.circular(4.0), bottomRight: Radius.circular(4.0)),
                  elevation: 2.0,
                  child: Container(
                    height: _sizeHeight,
                    decoration: BoxDecoration(
                        color: context.primaryColor() ?? Colors.white,
                        borderRadius: const BorderRadius.only(topRight: Radius.circular(4.0), bottomRight: Radius.circular(4.0))),
                    child: Icon(Icons.send, size: _sizeHeight - 30.0, color: Theme.of(context).iconTheme.color),
                  ),
                ),
              ))
        ],
      ),
    );

    final card = Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 8.0,
        child: body,
      ),
    );

    return card;
  }
}
