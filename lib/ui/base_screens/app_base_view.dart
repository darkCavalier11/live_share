import 'package:flutter/material.dart';
import 'package:live_share/ui/base_screens/top_header_view.dart';

import 'app_body_view.dart';

class AppBaseView extends StatelessWidget {
  const AppBaseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopHeaderView(),
          AppBodyView(),
        ],
      ),
    );
  }
}
