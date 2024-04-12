import 'package:flutter/material.dart';

import 'widgets/monitor_view_body.dart';

class MonitorView extends StatelessWidget {
  const MonitorView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: MonitorViewBody(),
      ),
    );
  }
}
