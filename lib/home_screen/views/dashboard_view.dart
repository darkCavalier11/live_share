import 'package:flutter/material.dart';
import 'package:live_share/home_screen/views/top_header_view.dart';

import 'dashboard_body_view.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopHeaderView(),
          DashboardBodyView(),
        ],
      ),
    );
  }
}
