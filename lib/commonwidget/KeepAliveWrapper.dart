import 'package:flutter/material.dart';

class KeepAliveWrapper extends StatefulWidget {
  final bool isKeepAlive;
  final Widget child;
  const KeepAliveWrapper({super.key, this.isKeepAlive = true, required this.child});

  @override
  State<KeepAliveWrapper> createState() => _KeepAliveWrapperState();
}

class _KeepAliveWrapperState extends State<KeepAliveWrapper>
    with AutomaticKeepAliveClientMixin {
  @override
  void didUpdateWidget(covariant KeepAliveWrapper oldWidget) {
    if (oldWidget.isKeepAlive != widget.isKeepAlive) {
      updateKeepAlive();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }

  @override
  bool get wantKeepAlive => widget.isKeepAlive;
}
