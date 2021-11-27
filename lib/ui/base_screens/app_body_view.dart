import 'package:flutter/material.dart';
import 'package:live_share/constants/ui_constants.dart';
import 'package:live_share/home_screen/views/explore_tab.dart';
import 'package:live_share/home_screen/views/home_view.dart';
import 'package:live_share/hubs/views/hubs_view.dart';
import 'package:live_share/ui/base_screens/sidebar.dart';

const int _k = 0;

class AppBodyView extends StatelessWidget {
  const AppBodyView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(UIconstants.bodyPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SideBar(),
          if (_k == 0) ...[
            Flexible(
              flex: 8,
              child: HomeView(),
            ),
            ExploreTab(),
          ] else if (_k == 1) ...[
            HubView(),
            ExploreTab(),
          ]
        ],
      ),
    );
  }
}
