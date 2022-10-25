import 'package:flutter/material.dart';

class KeepAliveWrapper extends StatefulWidget {
  final bool isKeepAlive;
  const KeepAliveWrapper({super.key,this.isKeepAlive=true});

  @override
  State<KeepAliveWrapper> createState() => _KeepAliveWrapperState();
}

class _KeepAliveWrapperState extends State<KeepAliveWrapper>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container();
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => throw UnimplementedError();
}
