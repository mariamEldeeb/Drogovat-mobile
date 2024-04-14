import 'package:drogovat_mobile/core/widgets/custom_dark_blue_app_bar.dart';
import 'package:drogovat_mobile/core/widgets/my_nav_drawer.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';
import 'widgets/monitor_view_body.dart';

class MonitorView extends StatelessWidget {
  const MonitorView({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        drawer: const MyNavigationDrawer(),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight + 30),
          child: CustomDarkBlueAppBar(
            sKey: scaffoldKey,
            name: 'Salah Mohamed',
          ),
        ),
        body: const MonitorViewBody(),
      ),
    );
  }
}
