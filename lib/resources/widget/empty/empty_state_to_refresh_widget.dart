import 'package:flutter/material.dart';

class EmptyStateToRefreshWidget extends StatelessWidget {
  final Text text;
  final Icon icon;
  final Future<void> Function()? onRefresh;
  final Color? color;
  final bool isVisible;

  const EmptyStateToRefreshWidget({required this.text, required this.icon, this.onRefresh, this.color, this.isVisible = true, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: Container(
        width:
            MediaQuery.of(context).orientation == Orientation.portrait ? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width * .90,
        alignment: Alignment.center,
        child: onRefresh != null
            ? RefreshIndicator(
                onRefresh: onRefresh ?? () async {},
                color: color ?? AppBarTheme.of(context).backgroundColor ?? Theme.of(context).colorScheme.secondary,
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: <Widget>[
                    icon,
                    const SizedBox(height: 32.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 34.0),
                      child: text,
                    ),
                  ],
                ),
              )
            : SingleChildScrollView(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: <Widget>[
                    icon,
                    const SizedBox(height: 32.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 34.0),
                      child: text,
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
