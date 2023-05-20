import 'package:flutter/material.dart';

class EmptyStateToRefreshWidget extends StatelessWidget {
  final Text text;
  final Icon icon;
  final Future<void> Function()? onRefresh;
  final Color? color;
  final bool isVisible;

  const EmptyStateToRefreshWidget({required this.text, required this.icon, this.onRefresh, this.color, this.isVisible = false, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: Container(
        alignment: Alignment.center,
        child: RefreshIndicator(
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
        ),
      ),
    );
  }
}
